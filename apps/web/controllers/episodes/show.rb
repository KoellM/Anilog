module Web::Controllers::Episodes
  class Show
    include Web::Action

    def call(params)
      episoderepository = EpisodeRepository.new
      episoderepository.find(params[:id])
      status 200, episoderepository.to_h
    end
  end
end
