require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    
    it "should have the content 'BeSocial'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1',:text => 'BeSocial')
    end

    it "should have the right title" do
    	visit '/static_pages/home'
    	page.should have_selector('title',
    	                 :text => 'BeSocial')
    end
  end

  describe "Help page" do

  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
    	visit '/static_pages/help'
    	page.should have_selector('title',
    		                :text => 'BeSocial | Help')
    end
  end

  describe "About page" do

  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About')
  	end
    
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
      	                :text => 'BeSocial | About')
    end  
  end

  describe "Contact page" do

  	it "should have the content 'Contact'" do
  		visit '/static_pages/contact'
  		page.should have_selector('h1', :text => 'Contact')
  	end

  	it "should have the right title" do
  		visit '/static_pages/contact'
  		page.should have_selector('title', 
  			               :text => 'BeSocial | Contact')
  	end
  end
end
