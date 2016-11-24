class MainController < ApplicationController
  require 'json'

  include TaskHelper


  def index
  end

  def help
  end

  def contacts
  end

  def about
  end

  def task
  end


  def task_one
  end


  def display_wheather
    obj = ActiveSupport::JSON.decode(params[:cond_wheather])
    location =  obj['query']['results']['channel']['location']
    @title = location["city"] + " - " + location["country"] + ", " + location["region"]
    cond_wheather = obj['query']['results']['channel']['item']['forecast'].to_a
    @cond_wheather = add_weather_image(cond_wheather)
  end


end
