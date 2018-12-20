class GardenPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all

      #or scope.where(user: user)
    end
  end
  def create?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == current_user
  end

end
