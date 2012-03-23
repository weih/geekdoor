require 'spec_helper'

describe "Users" do
  # database should have a sample user before server start
  before(:all) do
    User.create!(email: "admin@admin.com", password: "admin")
  end
  
  describe "GET /users/new" do
    it "should go to register page and register a new user" do
      visit new_user_path
      current_path.should == new_user_path
      fill_in('user_email', with: 'newuser@gmail.com')
      fill_in('user_password', with: 'newuser')
      click_on('Register')
      page.should have_content('Welcome newuser')
    end
  end
  
  describe "GET /sessions/new" do
    it "should go to sign in page and sign in with email and password" do
      User.create!(email: "newuser@gmail.com", password: "newuser")
      visit new_session_path
      current_path.should == new_session_path
      fill_in('email', with: 'newuser@gmail.com')
      fill_in('password', with: 'newuser')
      click_on('Sign In')
      page.should have_content('Welcome newuser')
    end
  end
  
  describe "DELETE /sessions" do
    pending "should go to sign user out adn redirect_to index page" do
    end
  end
end
