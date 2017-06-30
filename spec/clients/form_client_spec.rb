require 'spec_helper'
require './spec/stubs/stub_form_api.rb'

RSpec.describe FormulaeRuby::FormClient do
  let(:form_client) do
    FormulaeRuby::FormClient.new(api_key: '810cb082-1beb-4cb4-9f78-baeb330a42c5')
  end

  describe '#all' do
    it 'returns all the forms' do
      StubApi::Form.all
      forms = form_client.all
      expect(forms.count).to eq 8
      expect(forms.first.sections.count).to eq 5
    end
  end

  describe '#find' do
    let(:id) { 1 }

    it 'returns a specific form by id' do
      StubApi::Form.find
      form = form_client.find(id)
      expect(form.id).to eq 1
      expect(form.completion_content).to eq nil
      expect(form.application_id).to eq 1
      expect(!form.questions.empty?).to be_truthy
      expect(!form.sections.empty?).to be_truthy
    end
  end
end
