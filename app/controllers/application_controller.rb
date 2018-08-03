class ApplicationController < ActionController::Base
 before_action :get_category
 add_flash_types :success , :danger

  def get_category
    @categories = Category.all
  end
end
