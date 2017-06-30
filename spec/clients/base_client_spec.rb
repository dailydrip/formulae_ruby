require 'spec_helper'
require './spec/stubs/stub_form_api.rb'

RSpec.describe FormulaeRuby::FormClient do
  let(:base_client) do
    FormulaeRuby::BaseClient.new(api_key: '810cb082-1beb-4cb4-9f78-baeb330a42c5')
  end

  describe '#post' do
    it 'does something useful' do
      # base_client.post(1)
    end
  end

  describe '#get' do
    it 'gets all the forms' do
      StubApi::Form.all
      resp = base_client.get('forms/')
      expect(resp.status).to eq 200
    end
  end
end
