module Web::Controllers::Works
  class Index
    include Web::Action

    def call(params)
      self.format = :json
      begin
        work = WorkRepository.new.all
        status 200, APIReturn.success(work.map(&:to_h))
      rescue => e
        status 500, APIReturn.error(e)
      end
    end
  end
end
