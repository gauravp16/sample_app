require 'spec_helper'
describe "Static pages" do
  describe "Home page" do
    before {visit root_path}
    subject {page}
    it "should have the content 'Sample App'" do

      should have_content('Sample App')
    end

    it "should have the right title" do

      should have_selector('title',
                                :text => full_title(''))
    end


  end
  describe "Help page" do
    before {visit help_path}
    subject {page}
    it "should have the content 'Help'" do
      should have_content('Help')
    end

    it "should have the title 'Help'" do
      should have_selector('title',
                                :text => full_title('Help'))
    end

  end

  describe "About page" do
    before{ visit about_path}
    subject {page}
    it "should have the content 'About Us'" do

      should have_content('About Us')
    end

    it "should have the title 'About Us'" do

      should have_selector('title',
                                :text => full_title('About Us'))
    end

  end

  describe "Contacts page" do
    before {visit contact_path}
    subject {page}
    it "should have the h1 'Contact'" do
      should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      should have_selector('title', text: full_title('Contact'))
    end
  end


end
