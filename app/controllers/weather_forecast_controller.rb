class WeatherForecastController < ApplicationController

  def fetch_data
    city = 'London'
    api_key = '870395983ad54da827e3af75e1e141f1'

    url = "https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{api_key}"
    # HTTPartyでAPIリクエストを送信
    response = HTTParty.get(url)

    if response.success?
      @data = response.parsed_response
    else
      Rails.logger.error "APIリクエストに失敗しました: #{response.code}"
    end 

    # Viewにデータを渡す
    render :index
  end
end