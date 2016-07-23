require 'rails_helper'

feature "Display index page of humen" do
  scenario "go to page" do
    visit humen_path
    expect(page).to have_content("Liste des humains")
  end

end
