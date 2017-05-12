module FormulaeRuby
  class FormClient
    class << self
      private def client
        FormulaeRuby::BaseClient.new
      end

      def all
        [].tap do |f|
          response = client.get('forms/')
          response_forms = response.body
          response_forms.each do |form|
            f << Form.new(form)
          end
        end
      end

      def get(id)
        response = client.get("forms/#{id}")
        Form.new(response.body)
      end
    end
  end
end
