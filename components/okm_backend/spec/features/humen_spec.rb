require 'rails_helper'

feature "Humen process" do

  scenario "go to index page" do
    visit '/humen'
    expect(page).to have_content("Humen list")
  end

  scenario "display new page" do
    visit '/humen'
    click_link 'New human'
    expect(page).to have_content("Create new human")
  end

end
