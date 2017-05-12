require 'faraday_middleware'

module FormulaeRuby
  class BaseClient
    private def connection
      Faraday.new(url: Config.BASE_URL) do |builder|
        builder.request  :json
        builder.response :json, content_type: 'application/json'
        builder.adapter  :net_http
      end
    end

    def post(path, _headers = {})
      connection.post(path)
    end

    def get(path, _headers = {})
      connection.get(path)
    end
  end
end
