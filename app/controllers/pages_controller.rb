class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def help
  end

  def about
  end
end
