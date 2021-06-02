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
    !!user
  end

  def create?
    # Define policy. If user is a slayer, they will not be able to create, update, edit or destroy jobs
    !user.has_role? :slayer
  end

  def new?  
    create?
  end

  def update?
    true
  end

  def edit?
    !user.has_role? :slayer
  end

  def destroy?
    !user.has_role? :slayer
  end

  def accepted_job?
    user.has_role? :slayer
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
