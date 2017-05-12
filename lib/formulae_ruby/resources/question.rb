module FormulaeRuby
  class Question
    attr_accessor :id, :key, :label, :order, :content

    def initialize(json)
      encodeQuestion(json)
    end

    private def encodeQuestion(json)
      self.id = json['id']
      self.key = json['key']
      self.label = json['label']
      self.order = json['order']
      self.content = json['content']
      self
    end
  end
end
