require 'spec_helper'
require './spec/stubs/stub_form_api.rb'

RSpec.describe FormulaeRuby do
  describe 'Overview of Forms API' do
    let(:api_key) { '810cb082-1beb-4cb4-9f78-baeb330a42c5' }

    it 'returns all the forms' do
      StubApi::Form.all
      FormulaeRuby::FormClient.new(api_key: api_key).all
    end

    it 'gets a specific form' do
      StubApi::Form.find
      FormulaeRuby::FormClient.new(api_key: api_key).find(1)
    end
  end
end
