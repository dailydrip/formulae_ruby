module FormulaeRuby
  class Question
    attr_accessor :id, :key, :label, :content, :required,
      :order, :hidden, :type, :validate_as,
      :placeholder, :question_dependency, :section_id,
      :choices

    def initialize(json)
      decode_question(json)
    end

    private def decode_question(json)
      self.id = json['id']
      self.key = json['key']
      self.label = json['label']
      self.content = json['content']
      self.required = json['required']
      self.order = json['order']
      self.hidden = json['hidden']
      self.type = json['question_type']
      self.validate_as = json['validate_as']
      self.placeholder = json['placeholder']
      self.question_dependency = add_question_dependency(json['question_dependency']) if json['question_dependency']
      self.section_id = json['section_id']
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

    def add_question_dependency(json)
      QuestionDependency.new(json)
    end
  end
end
