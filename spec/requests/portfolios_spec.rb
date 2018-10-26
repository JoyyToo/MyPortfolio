require 'rails_helper'
require './spec/support/request_helper'

RSpec.describe 'Portfolio', type: :request do
  let!(:portfolio) { create_list(:portfolio, 10) }
  let(:portfolio_id) { portfolio.first.id }
  let(:portfolio_attributes) { attributes_for(:portfolio) }

  # describe 'POST /portfolio' do
  #   before do
  #     post '/portfolio', params: portfolio_attributes
  #   end
  #
  #   it 'returns status code 200' do
  #     expect(response).to have_http_status(200)
  #   end
  # end

  describe 'GET /portfolio' do
    before { get '/portfolio' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /react-items' do
    before { get '/react-items' }

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
    before { delete "/portfolio/#{portfolio_id}" }

    it 'returns status code 200' do
      expect(response).to have_http_status(302) # gets redirected
      expect(flash[:notice]).to eq "Permission Denied"
    end
  end

end
