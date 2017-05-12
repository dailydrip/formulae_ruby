module FormulaeRuby
  class Section
    attr_accessor :id, :form_id, :name, :order, :content

    def initialize(json)
      encode_section(json)
    end

    private def encode_section(json)
      self.id = json['id']
      self.form_id = json['form_id']
      self.name = json['name']
      self.order = json['order']
      self.content = json['content']
      self
    end
  end
end
