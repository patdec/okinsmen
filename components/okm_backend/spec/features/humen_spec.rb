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

  scenario "create new male" do
    visit '/humen/new'
    choose :human_gender_male
    fill_in :human_first_name, with: 'Patrice'
    fill_in :human_last_name, with: 'André'
    click_on("Valid")
    expect(page).to have_content('Mr Patrice André')
  end

  scenario "create new female" do
    visit '/humen/new'
    choose :human_gender_female
    fill_in :human_first_name, with: 'Anne'
    fill_in :human_last_name, with: 'André'
    click_on("Valid")
    expect(page).to have_content('Ms Anne André')
  end

end
