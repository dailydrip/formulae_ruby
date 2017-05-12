module FormulaeRuby
  class FormClient < BaseClient
    def initialize(options = {})
      super(options)
    end

    def all
      [].tap do |f|
        response = get('forms/')
        response_forms = response.body
        response_forms.each do |form|
          f << Form.new(form)
        end
      end
    end

    def find(id)
      response = get("forms/#{id}")
      Form.new(response.body)
    end
  end
end
