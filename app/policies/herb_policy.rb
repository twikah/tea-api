class HerbPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    # Only herb owners can update their records
    record.user == user
  end

  def create?
    # Any logged in user can create a herb
    !user.nil?
  end

  def destroy?
    update?
  end
end
