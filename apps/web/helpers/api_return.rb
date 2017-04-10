class APIReturn
  def self.error(message)
    {
        status: 'failed',
        error: {
            message: message
        }
    }.to_json
  end

  def self.success(data)
    {
        status: 'success',
        data: data
    }.to_json
  end
end
