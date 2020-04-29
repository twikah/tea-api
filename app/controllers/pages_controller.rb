class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :api ]

  def home
  end

  def api
  end
end
