require 'spec_helper'

describe UsersController do

  describe "Create User'" do
    it "should create user and redirect_to root" do
      post :create, { :email => "foo@bar.com", :password => "password" }
      response.should redirect_to root_path
    end
    
    it "should not create user and render new view" do
      post :create
      response.should render_template('new')
    end
  end

end
