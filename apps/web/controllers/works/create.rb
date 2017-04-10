module Web::Controllers::Works
  class Create
    include Web::Action

    params do
      required(:title).filled(:str?)
      required(:title_ja).filled(:str?)
      required(:official_site_url)
      required(:episode)
      required(:weekly)
      required(:type).filled(:int?)
      required(:released_at).filled(:date?)
    end

    def call(params)
      self.format = :json
      if params.valid?
        begin
          work = WorkRepository.new
          work = work.create(params.to_h)
          status 200, APIReturn.success(work.to_h)
        rescue => e
          status 500, APIReturn.error(e)
        end
      else
        status 400, APIReturn.error('缺少必要的值.')
      end
    end
  end
end
