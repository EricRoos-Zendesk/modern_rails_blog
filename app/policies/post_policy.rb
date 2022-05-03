class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    @user.present?
  end

  def new?
    create?
  end

  def update?
    @record.user == @user
  end

  def edit?
    update?
  end

  def destroy?
    @record.user == @user
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
