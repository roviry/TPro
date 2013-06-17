require 'spec_helper'

describe "StaticPages" do

    describe "Home page" do
        before { visit root_path }

        it "should have the <h1> tag 'Home'" do
            page.should have_selector('h1', text: 'TennisPro')
        end

        it "should have the title 'Home'" do
            page.should have_selector('title', text: 'TennisPro')
        end

        it "should not have a custom title" do
            page.should_not have_selector('title', text: 'Home')
        end
    end

    describe "Help page" do
        before { visit help_path }

        it "should have the <h1> tag 'Help'" do
            page.should have_selector('h1', text: 'Help')
        end

        it "should have title 'Help'" do
            page.should have_selector('title', text: 'Help')
        end

    end

    describe "About page" do
        before { visit about_path }

        it "should have the <h1> tag 'About'" do
            page.should have_selector('h1', text: 'About')
        end

        it "should have title 'About'" do
            page.should have_selector('title', text: 'About')
        end
    end

    describe "Contact page" do
        before { visit contact_path }

        it "Should have the <h1> tag 'Contact'" do
            page.should have_selector('h1', text: 'Contact Us')
        end

        it "Should jave the title 'Contact'" do
            page.should have_selector('title', text: 'Contact Us')
        end
    end

    describe "Log-in page" do
        before { visit login_path }

        it "should have the <h1> tag 'Log-in'" do
            page.should have_selector('h1', text: 'Log-in')
        end

        it "should have the title 'Log-in'" do
            page.should have_selector('title', text: 'Log-in')
        end
    end
end
