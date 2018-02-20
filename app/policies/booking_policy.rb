class BookingPolicy < ApplicationPolicy
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
      scope.all
    end
  end
end
