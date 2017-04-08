module Web::Controllers::Home
  class Index
    include Web::Action
    
    def call(_)
      works = WorkRepository.new.all
      status 200, JSON.generate(works.map(&:to_h))
    end
  end
end
