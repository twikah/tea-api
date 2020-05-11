class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :api ]

  def home
  end

  def api
    if params[:page].present?
      render partial: params[:page], layout: false
    end
  end
end
