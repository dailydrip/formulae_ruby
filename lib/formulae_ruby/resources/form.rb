module FormulaeRuby
  class Form
    attr_accessor :id, :application_id, :sections, :questions

    def initialize(json)
      encode_form(json)
    end

    private def encode_form(json)
      self.id = json['id']
      self.application_id = json['application']['id']
      self.sections = add_sections(json)
      self.questions = add_questions(json)
      self
    end

    private def add_sections(json)
      [].tap do |s|
        json['sections'].each do |section_hash|
          s << Section.new(section_hash)
        end
      end
    end

    private def add_questions(json)
      [].tap do |q|
        json['questions'].each do |question_hash|
          q << Question.new(question_hash)
        end
      end
    end
  end
end
