module FormulaeRuby
  class Choice
    attr_accessor :label, :metadata, :maximum_chosen

    def initialize(json)
      decode_choice(json)
    end

    private def decode_choice(json)
      self.label = json['label']
      self.metadata = json['metadata']
      self.maximum_chosen = json['maximum_chosen']
      self
    end
  end
end
