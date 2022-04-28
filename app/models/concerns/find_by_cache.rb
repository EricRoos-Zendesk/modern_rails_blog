require "active_support/concern"  
module FindByCache
  extend ActiveSupport::Concern

  included do
    after_commit :commit_to_cache

    def self.updated_at_for(id)
      last_touched = Rails.cache.fetch [self, id, :updated_at] do
        where(id: id).limit(1).pluck(:updated_at).first
      end
    end

    def self.find(id)
      Rails.cache.fetch([self, id, updated_at_for(id)]) do
        super(id).tap do |resource|
          resource.commit_to_cache
        end
      end
    end
  end

  def commit_to_cache
    Rails.cache.write [self.class, id, :updated_at], updated_at, expires_in: 3.minute
  end
end
