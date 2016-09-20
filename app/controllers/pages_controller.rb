class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  layout "welcome"


  def welcome
  end

end
