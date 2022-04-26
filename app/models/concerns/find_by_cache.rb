require "active_support/concern"  
module FindByCache
  extend ActiveSupport::Concern

  included do
    after_commit :commit_to_cache

    def self.find(id)
      last_touched = Rails.cache.fetch [self, id, :updated_at] do
        where(id: id).limit(1).pluck(:updated_at).first
      end
      Rails.cache.fetch([self, id, last_touched]) do
        where(id: id).first
      end
    end
  end

  def commit_to_cache
    Rails.cache.write [self.class, id, :updated_at], updated_at, expires_in: 3.minute
  end
end
