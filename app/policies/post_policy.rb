class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    return unless @user
    @user.has_role?(Role::AUTHOR)
  end

  def new?
    create? 
  end

  def update?
    return false unless @user
    @record.user == @user || @user.has_role?(Role::ADMIN)|| @user.has_role?(Role::MODERATOR)
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  def applauds?
    true
  end

  def applaud?
    return false unless @user.present?
    @record.user != @user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all.where("posted_at is not null")
    end
  end
end
