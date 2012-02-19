require 'spec_helper'

describe "Static pages >>" do
  
  let(:base_title) { "QuestOK |" } #string interpolation example

  describe "Home page" do
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title} Home")
    end
    
    it "should have the heading 'QuestOK Home'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'QuestOK Home')
    end
    
  end
  
  
  describe "About page" do
    
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} About")
    end
    
    it "should have the heading 'About QuestOK'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About QuestOK')
    end
    
  end
  
  
  describe "Help page" do
    
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} Help")
    end
    
    it "should have the heading 'QuestOK Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'QuestOK Help')
    end
    
  end
  
  
  describe "Policy page" do

    it "should have the right title" do
      visit '/static_pages/policy'
      page.should have_selector('title', :text => "#{base_title} Policy")
    end
    
    it "should have the heading 'QuestOK Policies'" do
      visit '/static_pages/policy'
      page.should have_selector('h1', :text => 'QuestOK Policies')
    end
    
  end
  
  
  describe "Contact page" do

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} Contact")
    end
    
    it "should have the content 'QuestOK Contacts'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'QuestOK Contacts')
    end
    
  end
  
  
end


#
# RSpec uses the general malleability of Ruby to define a domain-specific language (DSL) built just for testing.
#
# Capybara function visit
#
# $ bundle exec rspec spec/requests/static_pages_spec.rb
#
#
#  it "should have the content 'about page'" do
#    visit '/static_pages/about'
#    page.should have_content('about page')
#  end
