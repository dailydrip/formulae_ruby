module FormulaeRuby
  class Form
    attr_accessor :id, :application_id, :sections, :questions

    def initialize(json)
      encodeForm(json)
    end

    private def encodeForm(json)
      self.id = json['id']
      self.application_id = json['application']['id']
      self.sections = addSections(json)
      self.questions = addQuestions(json)
      self
    end

    private def addSections(json)
      [].tap do |s|
        json['sections'].each do |section_hash|
          s << Section.new(section_hash)
        end
      end
    end

    private def addQuestions(json)
      [].tap do |q|
        json['questions'].each do |question_hash|
          q << Question.new(question_hash)
        end
      end
    end
  end
end
