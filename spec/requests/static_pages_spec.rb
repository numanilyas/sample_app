require 'spec_helper'

describe "Static Pages" do
  
  let(:base_title) {"Ruby on Rails Tutorial Sample App | "}
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_content('Sample App')
    end
    
    it "should have the right title" do
    visit root_path
    page.should have_selector('title',
                              :text => "#{base_title}Home")
    end
    
  end
  
  describe "Help Page" do
    it "should have content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                        :text => "#{base_title}Help")
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end
    
    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                    :text => "#{base_title}About Us")
    end
    
  end
  
  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end
    
    it "should have title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
  
end
