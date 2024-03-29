require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
    
    it "should have the content 'Sample App'" do
      
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
      end
    it "should have the base title" do  
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end
    
    it "should not have a custom page title" do
      visit 'static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
    
  end

      describe "Help page" do

        it "should have the content 'Sample App'" do

          visit '/static_pages/help'
          page.should have_selector('h1', :text => 'Help')
          end
          it "should have the right title" do  
            page.should have_selector('title', :text => "Ruby on Rails | Help")
          end          
        

      end
      
      describe "Contact page" do

        it "should have the h1 'Contact'" do

          visit '/static_pages/contact'
          page.should have_selector('h1', :text => 'Contact Us')
          end
          it "should have the right title" do  
            page.should have_selector('title', :text => "Ruby on Rails | Contact Us")
          end          
        

      end
      describe "About page" do

        it "should have the content 'About Us'" do

          visit '/static_pages/about'
          page.should have_selector('h1', :text => 'About Us')
          end
          it "should have the right title" do  
            page.should have_selector('title', :text => "Ruby on Rails | About Us")
          end          
        

      end
end
