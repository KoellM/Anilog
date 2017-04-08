module Web::Controllers::Works
  class Show
    include Web::Action
    expose :work

    def call(params)
      @work = WorkRepository.new.find(params[:id])
    end
  end
end
