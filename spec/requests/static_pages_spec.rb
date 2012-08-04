require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')

			page.should have_selector('title', 
					:text => 'Sample Application Demo | Home')
		end

	end


	describe "Help page" do

		it "should have content 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')

			page.should have_selector('title', 
					:text => 'Sample Application Demo | Help')
		end

	end

	describe "About page" do

		it "should have content 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')

			page.should have_selector('title', 
					:text => 'Sample Application Demo | About Us')
		end

	end

	describe "Contact page" do

		it "should have content 'Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact Us')

			page.should have_selector('title', 
					:text => 'Sample Application Demo | Contact Us')
		end

	end
    
end
