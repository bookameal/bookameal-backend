require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "validation tests" do
    it "ensures user_name presence" do
      user = User.new(email: "name@gmail.com").save
      expect(user).to eq(false)
  end

  it "ensures email to be unique" do
    user = User.new(email: "email").save
    expect(user).to eq(false)
  end

  it "ensures user_name to be unique" do
    user = User.new(user_name: "user_name").save
    expect(user).to eq(false)
  end

  it "ensures email presence" do
    user = User.new(user_name: "user_name").save
    expect(user).to eq(false)
  end

    it "should save successfully" do
      user = User.new(user_name: "user_name", email: "name@gmail.com").save
      expect(user).to eq(false)
    end
  end

  # context "scope test" do
  #   let (:params) {{user_name: "user_name", email: "name@gmail.com"}}
  #   before(:each) do
  #     User.new(params).save
  #     User.new(params).save
  #     User.new(params).save
  #     User.new(params.merge(user_type: 0)).save
  #     User.new(params.merge(user_type: 1)).save
  # end
  
  # it "should return regular users" do
  #   expect(User.regular_users.size).to eq(4)
  # end
  
  # it "should return admin users" do
  #   expect(User.admin_users.size).to eq(1)
  # end
  # end
end


