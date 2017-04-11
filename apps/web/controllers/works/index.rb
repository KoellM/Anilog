module Web::Controllers::Works
  class Index
    include Web::Action

    def call(params)
      self.format = :json

      work = WorkRepository.new.all
      status 200, APIReturn.success(work.map(&:to_h))
    end
  end
end
