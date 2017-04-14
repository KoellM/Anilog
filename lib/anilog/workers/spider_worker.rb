class SpiderWorker
  include Sidekiq::Worker

  def perform(spider_name, params)
    # 爬虫相关
  end
end