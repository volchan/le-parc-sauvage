class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %I[home contact team sponsorship]

  def home; end

  def contact; end

  def team; end

  def sponsorship; end

end
