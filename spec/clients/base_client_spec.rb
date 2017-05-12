require 'spec_helper'

RSpec.describe FormulaeRuby::FormClient do
  let(:base_client) { FormulaeRuby::BaseClient.new }

  describe '#post' do
    it 'does something useful' do
      # base_client.post(1)
    end
  end

  describe '#get' do
    it 'gets all the forms' do
      resp = base_client.get('forms/')
      expect(resp.status).to eq 200
    end
  end
end
