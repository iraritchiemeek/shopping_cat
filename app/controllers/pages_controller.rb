class PagesController < ApplicationController

  before_action :authenticate_user!, only: [:shop]

  def home
  end

  def shop
  end

end
