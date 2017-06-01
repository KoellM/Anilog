class WorksController < ApplicationController
  def index
    api_return(Work.all)
  end

  def show
    api_return(Work.find(params[:id]))
  end

  def create
    work = Work.create(work_params)
    render json: work
  end

  def destroy
    # 并没有什么删除。
  end

  private
  def work_params
    params.require(:work).permit(:title, :title_ja, :official_site_url, :episode, :type, :copyright, :on_air)
  end
end
