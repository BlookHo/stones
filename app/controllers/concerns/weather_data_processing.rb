module WeatherDataProcessing
  extend ActiveSupport::Concern

  # Task One - Yahoo wheather

  def make_weather_data(cond_wheather)
    logger.info "In make_weather_data"

    obj = ActiveSupport::JSON.decode(cond_wheather)
    location =  obj['query']['results']['channel']['location']
    title = location["city"] + " - " + location["country"] + ", " + location["region"]
    cond_wheather = obj['query']['results']['channel']['item']['forecast'].to_a
    wheather_data = add_weather_image(cond_wheather)

    return wheather_data, title
  end

  def add_weather_image(cond_wheather)
    cond_wheather.each do |one_day_weather|
      code = one_day_weather["code"]
      case code
        when "26"
          wheather_image_file = "cloudy.jpg"
        when "30"
          wheather_image_file = "partly_cloudy.jpg"
        when "28"
          wheather_image_file = "mostly_cloudy.jpg"
        when "32"
          wheather_image_file = "sunny.jpg"
        when "34"
          wheather_image_file = "mostly_sunny.jpg"
        when "14"
          wheather_image_file = "snow_showers.jpg"
        when "23"
          wheather_image_file = "breezy.jpg"
        else
          wheather_image_file = "weather.jpg"
      end
      one_day_weather["image"] = wheather_image_file
    end
    cond_wheather
  end




end