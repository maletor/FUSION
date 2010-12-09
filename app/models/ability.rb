class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :manage, :all if user.type == "Employee"

      can :manage, Comment do |comment|
        comment.user_id == user.id
      end

      if user.type == "Client"
        can :read, :all
        can :create, Comment
        can :create, Image
        can :create, Annotation
      end
    else
      can :read, :all
    end
  end
end
