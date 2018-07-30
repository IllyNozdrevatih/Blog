class PersonsController < ApplicationController
  before_action :authenticate_user!
  def profile
    @articles =  current_user.article
  end
end
