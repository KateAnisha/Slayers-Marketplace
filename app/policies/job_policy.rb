class JobPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    if user
      return true
    else
      return false
    end
    # !!user
  end

  def create?
    # Define policy. If user is a slayer, they will not be able to create, update, edit or destroy jobs
    !user.has_role? :slayer

    # put this in the slayer/create policy
    # return false if user.slayer_info
  end

  def new?  
    create?
  end

  def update?
    !user.has_role? :slayer
  end

  def edit?
    update?
  end

  def destroy?
    !user.has_role? :slayer
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
