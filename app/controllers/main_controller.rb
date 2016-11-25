class MainController < ApplicationController
  require 'json'

  include WeatherDataProcessing     # task 1
  include SearchResultsProcessing   # task 2


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
    logger.info "In task_one"
  end

  def display_wheather
    logger.info "In display_wheather"

    @cond_wheather = []
    @title = ""
    unless params[:cond_wheather].blank?
      @cond_wheather, @title = make_weather_data(params[:cond_wheather])
    end
  end

  def search_form_jand
    logger.info "In search_form_jand"
    # @cond_wheather = []
    # @title = ""
    # unless params[:cond_wheather].blank?
    #   @cond_wheather, @title = make_weather_data(params[:cond_wheather])
    # end
  end


  def display_search_results
    # @cond_wheather = []
    # @title = ""
    # unless params[:cond_wheather].blank?
    #   @cond_wheather, @title = make_weather_data(params[:cond_wheather])
    # end
  end



end
