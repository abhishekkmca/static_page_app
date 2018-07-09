require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do

    # it "should have the content 'Sample App'" do
    #   visit home_path
    #   page.should have_selector('h1', :text => 'homepage')
    # end
    
    before { visit home_path}

    it { should have_selector('title', text: full_title('')) }
    
    it { should_not have_selector('title', :text => '| Home') }
    
  end

  describe "Help page" do

  	before {visit help_path}

    it { should have_selector('h1', :text => 'Help') }

    it { should have_selector('title', text: full_title('')) }
    

    it { should_not have_selector('title', :text => '| Help') }
   

  end

	
  describe "About page" do

  	before {visit about_path}

    it "should have the content 'About Us'" do

      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do

      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Static Page App")
    end
    it "should not have a custom page title" do

      page.should_not have_selector('title', :text => '| About Us')
    end
  end

  describe "Contact page" do

  	before {visit contact_path}

    it "should have the h1 'Contact'" do

      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      page.should_not have_selector('title',text: "| Contact")
    end
  end


end