require_relative '../spec_helper'

feature "trees" do
  scenario "user can add a tree" do
    visit '/'
    click_on 'Trees'
    click_on 'Add a tree'
    fill_in 'name', with: 'Oak'
    click_on 'Create'

    expect(page).to have_content 'Oak'
  end
end