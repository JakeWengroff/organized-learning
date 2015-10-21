require 'spec_helper'

RSpec.describe UsersController, type: :controller do

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
    # @item = FactoryGirl.create(:skill)
    # @user.items << @item
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, :id => @user.id
      expect(response).to have_http_status(:success)
    end
  end

end
