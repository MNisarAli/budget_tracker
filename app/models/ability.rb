class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    # Manage their own profile
    can :manage, User, id: user.id

    # Manage their own expenses
    can :manage, Expense, author_id: user.id

    # Manage their own categories
    can :manage, Category, user_id: user.id
  end
end
