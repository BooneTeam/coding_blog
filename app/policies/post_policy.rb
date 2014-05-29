class PostPolicy
  attr_reader :user, :post

  def initialize(user,post)
    @user = user || User.new
  end

  def edit?
    @user.admin?
  end

  def update?
    @user.admin?
  end

  def destroy?
    @user.admin?
  end

  def new?
    @user.admin?
  end

end

