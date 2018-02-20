class GrandmaPolicy < ApplicationPolicy
  def create?
    true
  end

  def new?
    true
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end

  def index?
    true
  end

  def show?
    true
  end


  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
