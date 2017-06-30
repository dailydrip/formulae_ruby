require 'webmock'
include WebMock::API

module StubApi
  class Form
    class << self
      def all
        json = JSON.parse(File.read('./spec/responses/form_all.json'))

        stub_request(:get, 'http://localhost:3000/api/v1/forms/')
          .with(headers: headers)
          .to_return(status: 200, body: json)
      end

      def find
        json = JSON.parse(File.read('./spec/responses/form_find.json'))

        stub_request(:get, 'http://localhost:3000/api/v1/forms/1')
          .with(headers: headers)
          .to_return(status: 200, body: json)
      end

      private def headers
        { 'Accept' => '*/*', 'Accept-Encoding' => 'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Authorization' => 'Bearer 810cb082-1beb-4cb4-9f78-baeb330a42c5', 'Content-Type' => 'application/json', 'User-Agent' => 'Faraday v0.12.1' }
      end
    end
  end
end
