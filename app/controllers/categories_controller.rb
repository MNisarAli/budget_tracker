class CategoriesController < ApplicationController
  def index
    @user = current_user
    @categories = @user.categories.order(created_at: :desc)
    @expenses = current_user.expenses
  end

  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.new(category_params)

    if @category.save
      flash[:notice] = 'New Category Created Successfully'
      redirect_to user_categories_path
    else
      flash[:notice] = 'Please provide a valid Icon image and Name'
      redirect_to new_user_category_path
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
