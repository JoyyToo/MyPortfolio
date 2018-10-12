require 'rails_helper'
require './spec/support/request_helper'

RSpec.describe 'Portfolio', type: :request do
  let!(:portfolio) { create_list(:portfolio, 10) }

  describe 'GET /portfolio' do
    before do
      get '/portfolio'
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end
