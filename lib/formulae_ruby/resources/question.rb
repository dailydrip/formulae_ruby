module FormulaeRuby
  class Question
    attr_accessor :id, :key, :label, :order, :content

    def initialize(json)
      decode_question(json)
    end

    private def decode_question(json)
      self.id = json['id']
      self.key = json['key']
      self.label = json['label']
      self.order = json['order']
      self.content = json['content']
      self
    end
  end
end
