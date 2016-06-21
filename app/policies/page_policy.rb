class PagePolicy < ApplicationPolicy

  def index?
    true
  end

  def create?
    true
  end

  def show?
    user
  end

  class Scope < Scope
    def resolve
      user ? scope.all : scope.none
    end
  end

end
