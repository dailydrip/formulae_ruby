module Config
  class << self
    def base_url
      ENV['BASE_URL'] ? ENV['BASE_URL'] : 'http://localhost:3000/api/v1/'
    end
  end
end
