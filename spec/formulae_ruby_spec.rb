require 'spec_helper'

RSpec.describe FormulaeRuby do
  describe 'version' do
    it 'has a version number' do
      expect(FormulaeRuby::VERSION).not_to be nil
    end
  end

  describe 'forms' do
    it 'Getting All the Forms' do
      FormulaeRuby::FormClient.all
    end

    it 'Getting a Specific Form' do
      FormulaeRuby::FormClient.get(1)
    end
  end
end
