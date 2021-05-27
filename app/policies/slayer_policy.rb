class SlayerPolicy
    attr_reader :user, :record
  
    def initialize(user, record)
      @user = user
      @record = record
    end
  
    def index?
      true
    end
  
    def show?
      true
    end
  
    def create?
      user.has_role? :slayer
  
      # put this in the slayer/create policy
      # return false if user.slayer_info
    end
  
    def new?  
      create?
    end
  
    def update?
      user.has_role? :slayer
    end
  
    def edit?
      update?
    end
  
    def destroy?
      false
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
  