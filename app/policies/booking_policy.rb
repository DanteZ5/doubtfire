class BookingPolicy < ApplicationPolicy
  def index?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end

  def show?
    true
  end


  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end
