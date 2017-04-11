module Web::Controllers::Works
  class Show
    include Web::Action
    handle_exception NoMethodError => :handle_not_found_error

    def call(params)
      self.format = :json

      workrepository = WorkRepository.new
      work = workrepository.find_with_episodes(params[:id])
      status 200, APIReturn.success(attributes_work(work))
    end

    private
    def attributes_work(hash)
      {
          id: hash.id,
          title: hash.title,
          title_ja: hash.title_ja,
          official_site_url: hash.official_site_url,
          episode: hash.episode,
          weekly: hash.weekly,
          type: hash.type,
          copyright: hash.copyright,
          released_at: hash.released_at,
          created_at: hash.created_at,
          updated_at: hash.updated_at,
          episodes: hash.episodes.map(&:to_h)
      }
    end

    def handle_not_found_error(e)
      status 404, APIReturn.error('番剧 ID 不存在.')
    end
  end
end
