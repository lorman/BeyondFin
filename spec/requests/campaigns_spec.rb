require 'rails_helper'

RSpec.describe "Campaigns", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/campaigns"
      expect(response).to have_http_status(:success)
    end
  end

end
