class Ability
  include CanCan::Ability

  def initialize(user)
    if user

      if user.type == "Employee"
        can :manage, :all
      else
        can :read, :all
      end

      can :update, Comment do |comment|
        comment.user_id == user.id
      end

      can :destroy, Comment do |comment|
        comment.user_id == user.id
      end

      if user.type == "Employee"
        can :create, Client 
      end
    else
      can :manage, :all
    end
  end
end
