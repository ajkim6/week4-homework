class IndexController < ApplicationController

  def locations
    @stop = params[:stop_name]
    @url = URI.escape("http://data.cityofchicago.org/resource/8pix-ypme.json")
    @json_data = open(@url).read
    @data = JSON.parse(@json_data)
  end

  def show
    @stop = params[:stop_name]
    @url = URI.escape("http://data.cityofchicago.org/resource/8pix-ypme.json")
    @json_data = open(@url).read
    @data = JSON.parse(@json_data)
  end

end
