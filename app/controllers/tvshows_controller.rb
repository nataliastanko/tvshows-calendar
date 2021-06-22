class TvshowsController < ApplicationController
  before_action :activateThemoviedbAPI

  # https://api.themoviedb.org/3/search/tv?query={query}&api_key={key}
  def search
    @query = params[:query]
    @search = Tmdb::TV.find(@query)
  end

  # https://api.themoviedb.org/3/tv/{id}/season/{season}?api_key={key}
  def show
    @tvshow = Tmdb::TV.detail(params[:id])
  end

  def create
  end

  def season
    # show = Tmdb::Season.detail(1396, 1)
  end

  def episode
    # episode = Tmdb::Episode.detail(1396, 1, 1)
  end

  private
  def activateThemoviedbAPI
    Tmdb::Api.key(Rails.application.credentials.themoviedb[:api_key])
  end

end
