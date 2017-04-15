class SpiderWorker
  include Sidekiq::Worker

  def perform(spider_name, params)

  end
end