class CategoriesController < ApplicationController
  before_action :authorize
  before_action :restrict_user
  def new
      @category=Category.new
  end
  def create
      @category=Category.new(category_params)
      if @category.save
          redirect_to '/',flash: {success:"Item Created"}
      else
          render 'new'
      end
  end
  private
  def category_params
      # binding.pry
      params.require(:category).permit(:products)
  end
end