require 'spec_helper'

RSpec.describe FormulaeRuby::FormClient do
  let(:form_client) do
    FormulaeRuby::FormClient.new(api_key: '810cb082-1beb-4cb4-9f78-baeb330a42c5')
  end

  describe '#all' do
    it 'does something useful' do
      forms = form_client.all
    end
  end

  describe '#find' do
    let(:id) { 1 }
    it 'returns a specific form' do
      form = form_client.find(id)
      expect(form.id).to eq 1
      expect(form.application_id).to eq 1
      # FIXME: Use vcr here
      expect(!form.questions.empty?).to be_truthy
      expect(!form.sections.empty?).to be_truthy
    end
  end
end
