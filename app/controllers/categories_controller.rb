class CategoriesController < ApplicationController
  def get
    @articles = Category.find(params[:id]).articles.includes(:user).page(params[:page]).per_page(4)
  end
end
