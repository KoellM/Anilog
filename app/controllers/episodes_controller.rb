class EpisodesController < ApplicationController

  def index
    work = Work.find(params[:work_id])
    episodes = work.episodes.all
    api_return(episodes)
  end

  def show
    episode = Episode.find(params[:id])
    api_return(episode)
  end

  def create
    work = Work.find(params[:work_id])
    episode = work.episodes.create(episode_params)
    api_return(episode)
  end

  private
  def episode_params
    params.require(:episode).permit(:number, :type, :title, :title_ja)
  end
end
