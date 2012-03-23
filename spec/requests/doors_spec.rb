require 'spec_helper'

describe "Doors" do
  before(:all) do
    User.create!(email: "admin@admin.com", password: "admin")
    visit new_session_path
    current_path.should == new_session_path
    fill_in('email', with: 'admin@admin.com')
    fill_in('password', with: 'admin')
    click_on('Sign In')
  end
  
  describe "GET /" do
    it "should add a new door" do
      visit root_path
      fill_in 'geekdoor_name', with: 'Baidu'
      fill_in 'geekdoor_url', with: 'http://www.baidu.com'
      fill_in 'geekdoor_hotkey', with: 'q'
      click_on 'done_btn'      
      print page.html
      page.should have_content('Baidu')
    end
  end
  
  describe "GET /" do
    pending "should search the first site with the keyword that user input" do
      visit root_path
      fill_in 'keyword', with: 'testsearch'
    end
  end
end
