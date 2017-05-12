require 'spec_helper'

RSpec.describe FormulaeRuby::FormClient do
  let(:form_client) { FormulaeRuby::FormClient }

  describe '#all' do
    it 'does something useful' do
      forms = form_client.all
      puts forms.inspect
    end
  end

  describe '#get' do
    let(:id) { 1 }
    it 'returns a specific form' do
      form = form_client.get(id)
      expect(form.id).to eq 1
      expect(form.application_id).to eq 1
      # FIXME
      # Test sections
      # Test questions
    end
  end
end
