require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET /new" do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200 " do
      post :create, params: { user: { username: "Guillermo" } }
      expect(response).to redirect_to(users_url)
    end

    it "creates a new user" do
      post :create, params: { user: { username: "geor" } }
      expect(User.find_by(username: "geor")).to be
    end
  end

end
