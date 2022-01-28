class ThemesController < ApplicationController
  before_action :set_theme, only: %i[ show update destroy ]

  def index
    #render json: @themes

  end

end
