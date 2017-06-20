module FormulaeRuby
  class Form
    attr_accessor :id, :application_id, :completion_content, :sections, :questions

    def initialize(json)
      decode_form(json)
    end

    private def decode_form(json)
      self.id = json['id']
      self.application_id = json['application']['id']
      self.completion_content = json['completion_content']
      self.sections = add_sections(json['sections']) if json['sections']
      self.questions = add_questions(json['questions']) if json['questions']
      self
    end

    private def add_sections(json)
      [].tap do |s|
        json.each do |section_hash|
          s << Section.new(section_hash)
        end
      end
    end

    private def add_questions(json)
      [].tap do |questions|
        json.each do |question_hash|
          questions << Question.new(question_hash)
        end
      end
    end
  end
end
