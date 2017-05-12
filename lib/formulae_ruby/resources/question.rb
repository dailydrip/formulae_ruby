module FormulaeRuby
  class Question
    attr_accessor :id, :key, :label, :order, :content

    def initialize(json)
      encode_question(json)
    end

    private def encode_question(json)
      self.id = json['id']
      self.key = json['key']
      self.label = json['label']
      self.order = json['order']
      self.content = json['content']
      self
    end
  end
end
