class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :manage, :all if user.type == "Employee"

      can :manage, Comment do |comment|
        comment.user_id == user.id
      end

      can :manage, Image do |image|
        image.user_id == user.id
      end

      can :manage, Annotation do |annotation|
        annotation.user_id == user.id
      end

      if user.type == "Client"
        can :read, :all
        can :read, Employee
        can :create, Comment
        can :create, Image
        can :create, Annotation
      end
    else
      can :read, :all
    end
  end
end
