class MainController < ApplicationController
  # skip_before_filter  :authenticate
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

    value = params[:value]
    logger.info "In search_form_jand: value = #{value} "

    content = params[:content]
    logger.info "In search_form_jand: content = #{content} "

  end

  def store_search_query
    query = params[:query]
    logger.info "In store_search_query: query = #{query} "
    query_text = "Search query = #{query}"
    logger.info "In store_search_query: query_text = #{query_text} "
    respond_to do |format|
      if query.blank?
        format.html {  render nothing: true, status: :unprocessable_entity }
        format.json {}
      else
        format.json { render json:  { query_text: query_text,
                                      notice: 'Successfully listed to next'} }
      end
    end
  end


  def display_search_results
    # @cond_wheather = []
    # @title = ""
    # unless params[:cond_wheather].blank?
    #   @cond_wheather, @title = make_weather_data(params[:cond_wheather])
    # end
  end



end
