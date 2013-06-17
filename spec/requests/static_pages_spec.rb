require 'spec_helper'

describe "StaticPages" do

    describe "Home page" do
        before { visit '/static_pages/home' }

        it "should have the <h1> tag 'Home'" do
            page.should have_selector('h1', :text => 'TennisPro')
        end

        it "should have the title 'Home'" do
            page.should have_selector('title', :text => 'TennisPro')
        end

        it "should not have a custom title" do
            page.should_not have_selector('title', :text => 'Home')
        end
    end

    describe "Help page" do
        before { visit '/static_pages/help' }

        it "should have the <h1> tag 'Help'" do
            page.should have_selector('h1', :text => 'Help')
        end

        it "should have title 'Help'" do
            page.should have_selector('title', :text => 'Help')
        end

    end

    describe "About page" do
        before { visit '/static_pages/about' }

        it "should have the <h1> tag 'About'" do
            page.should have_selector('h1', :text => 'About')
        end

        it "should have title 'About'" do
            page.should have_selector('title', :text => 'About')
        end
    end

    describe "Contact page" do
        before { visit '/static_pages/contact' }

        it "Should have the <h1> tag 'Contact'" do
            page.should have_selector('h1', :text => 'Contact Us')
        end

        it "Should jave the title 'Contact'" do
            page.should have_selector('title', :text => 'Contact Us')
        end
    end
end
