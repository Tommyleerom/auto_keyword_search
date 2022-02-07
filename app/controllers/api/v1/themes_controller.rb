class Api::V1::ThemesController < ApplicationController
  include Request

  def index

    @login = params[:login]
    @password = params[:password]
    @query = params[:query]

    render json: { message: 'Theme list', data: grabber(@login, @password, @query) }, status: :ok
  end

end
