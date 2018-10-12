require 'rails_helper'
require './spec/support/request_helper'

RSpec.describe 'Portfolio', type: :request do
  let!(:portfolio) { create_list(:portfolio, 10) }
  let(:portfolio_id) { portfolio.first.id }

  describe 'GET /portfolio' do
    before { get '/portfolio' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /portfolio/:id' do
      before { get "/portfolio/#{portfolio_id}" }

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

  describe 'DELETE /portfolio/:id' do
    before { get "/portfolio/#{portfolio_id}" }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end
