class Ability
  include CanCan::Ability

  def initialize(user)
    can :update, Comment do |comment|
      comment.user_id == user.id and
      Time.now < 15.minutes.since(comment.created_at)
    end

    can :destroy, Comment do |comment|
      comment.user_id == user.id and
       Time.now < 15.minutes.since(comment.created_at)
    end
  end

end
