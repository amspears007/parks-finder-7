class ParksController < ApplicationController
  def index
    state = params[:state]
    
    conn = Faraday.new(url: "https://developer.nps.gov") do |faraday|
    faraday.headers["X-Api-Key"] = ENV["X-Api-Key"]
  end
  
  response = conn.get("/api/v1/parks?parkCode=&stateCode=#{state}&limit=10")
  json = JSON.parse(response.body, symbolize_names: true)
  require 'pry'; binding.pry

  end
end