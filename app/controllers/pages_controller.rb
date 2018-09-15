class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact]

  def home; end

  def contact; end

  def team; end

  def sponsorship; end

end
