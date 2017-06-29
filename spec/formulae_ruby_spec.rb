require 'spec_helper'

RSpec.describe FormulaeRuby do
  describe 'version' do
    it 'has a version number' do
      expect(FormulaeRuby::VERSION).not_to be nil
    end
  end

  describe 'forms' do
    let(:api_key) { '810cb082-1beb-4cb4-9f78-baeb330a42c5' }
    it 'Getting All the Forms' do
      FormulaeRuby::FormClient.new(api_key: api_key).all
    end

    it 'Getting a Specific Form' do
      FormulaeRuby::FormClient.new(api_key: api_key).find(1)
    end
  end
end
