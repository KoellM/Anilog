module Web::Controllers::Works
  class Create
    include Web::Action

    params do
      required(:title).filled
      required(:title_ja).filled
      required(:official_site_url)
      required(:episode)
      required(:weekly)
      required(:type).filled
      required(:released_at)
    end

    def call(params)
      self.format = :json

      if params.valid?
        work = WorkRepository.new
        work = work.create(
            title: params[:title],
            title_ja: params[:title_ja],
            official_site_url: params[:official_site_url],
            episode: params[:episode],
            weekly: params[:weekly],
            type: params[:type],
            released_at: params[:released_at]
        )
        status 200, APIReturn.success(work.to_h)
      else
        status 400, APIReturn.error('缺少必要的值.')
      end
    end
  end
end
