require 'spec_helper'

feature 'Fruits' do

  scenario 'user can visit the homepage' do
    visit '/'
    expect(page).to have_content('welcome!')
    click_on 'Add Fruit'
    fill_in 'name', with: 'Banana'
    fill_in 'description', with: 'Yellow'
    click_on 'Submit'
    expect(page).to have_content('Banana')
    expect(page).to have_content('Yellow')
  end

end