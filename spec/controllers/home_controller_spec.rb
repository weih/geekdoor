require 'spec_helper'

describe HomeController do
  before(:each) do
    @user = Factory :user
  end
  
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      assigns(:user).should eq(@user)
      response.should be_success
    end
  end

end
