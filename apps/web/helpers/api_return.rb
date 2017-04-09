class APIReturn
  def self.error(code, message)
    {
        status: 'failed',
        error: {
            code: code,
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
