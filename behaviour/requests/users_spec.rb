require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
   it "return a success response" do
    get :index
    expect(response).to_be success
   end
  end

  describe "GET /show" do
    it "return a success response" do
      user = User.create!(user_name: "user_name", password: "password", email: "email")
     get :show, params: {id: user_params}
     expect(response).to be_success
    end
   end
end
