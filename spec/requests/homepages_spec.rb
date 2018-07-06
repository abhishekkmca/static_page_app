require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/homepage/home'
      page.should have_selector('h1', :text => 'homepage')
    end
    
    it "should have the title 'Home'" do
      visit '/homepage/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Static Page App")
    end

    it "should not have a custom page title" do
      visit '/homepage/home'
      page.should_not have_selector('title', :text => '| Home')
    end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/homepage/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/homepage/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Static Page App")
    end

    it "should not have a custom page title" do
      visit '/homepage/help'
      page.should_not have_selector('title', :text => '| Help')
    end

  end

	
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/homepage/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/homepage/about'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Static Page App")
    end
    it "should not have a custom page title" do
      visit '/homepage/about'
      page.should_not have_selector('title', :text => '| About Us')
    end
  end


end