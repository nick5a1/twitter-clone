require 'spec_helper'

describe "Static pages" do

  subject { page }
  
<<<<<<< HEAD
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end
  
  describe "Home page" do
    before { visit root_path }
    let(:heading) { 'Twitter Clone App' }
    let(:page_title) { '' }
    
    it_should_behave_like "all static pages"
    it { should_not have_selector 'title', text: '| Home'}
=======
  describe "Home page" do
    before { visit root_path }
    
    it { should have_selector('h1', :text => 'Twitter Clone App') }
    it { should have_selector('title', :text => full_title('')) }
    it { should_not have_selector('title', :text => '| Home') }
>>>>>>> origin/master
  end
  
  describe "Help page" do
    before { visit help_path }
<<<<<<< HEAD
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }
    
    it_should_behave_like "all static pages"
=======
    
    it { should have_selector('h1', :text => 'Help') }
    it { should have_selector('title', :text => full_title('Help')) }
>>>>>>> origin/master
  end
  
  describe "About page" do
    before { visit about_path }
<<<<<<< HEAD
    let(:heading) { 'About' }
    let(:page_title) { 'About' }
    
    it_should_behave_like "all static pages"
=======
    
    it { should have_selector('h1', :text => 'About') }
    it { should have_selector('title', :text => full_title('About')) }
>>>>>>> origin/master
  end
  
  describe "Contact page" do
    before { visit contact_path }
<<<<<<< HEAD
    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }
    
    it_should_behave_like "all static pages"
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
    click_link "sample app"
    page.should have_selector 'title', text: full_title('')
=======
    
    it { should have_selector('h1', :text => 'Contact') }
    it { should have_selector('title', :text => full_title('Contact')) }
>>>>>>> origin/master
  end
  
end