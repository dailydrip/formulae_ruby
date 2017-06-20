module FormulaeRuby
  class QuestionDependency
    attr_accessor :display, :and, :choices

    def initialize(json)
      decode_question_dependency(json)
    end

    private def decode_question_dependency(json)
      self.display = json['display']
      self.and = json['and']
      self.choices = add_choices(json['choices']) if json['choices']
      self
    end

    private def add_choices(json)
      [].tap do |c|
        json.each do |choice_hash|
          c << Choice.new(choice_hash)
        end
      end
    end
  end
end
