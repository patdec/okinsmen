require 'rails_helper'

module OkmBackend
  RSpec.describe DashboardsController, type: :controller do
    routes { OkmBackend::Engine.routes }

    describe "GET #index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

  end
end
