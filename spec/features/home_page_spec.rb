require 'rails_helper'

RSpec.feature "HomePages", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
  
  describe 'GET /' do
    it 'displays projects' do
      visit '/'
      expect(page).to have_content('Projects')
    end
  end
end