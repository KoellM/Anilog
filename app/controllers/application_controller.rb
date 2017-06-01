class ApplicationController < ActionController::API
  def api_return(data)
    render json: {
        status: 'success',
        data: data
    }
  end
end
