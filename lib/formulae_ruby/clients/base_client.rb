require 'faraday_middleware'

module FormulaeRuby
  class BaseClient
    def initialize(options = {})
      @application_id = options[:application_id]
    end

    def post(path, _headers = {})
      connection.post(path)
    end

    def get(path, _headers = {})
      connection.get(path)
    end

    private def connection
      Faraday.new(url: Config.base_url) do |builder|
        builder.request  :json
        builder.response :json, content_type: 'application/json'
        builder.adapter  :net_http
      end
    end
  end
end
