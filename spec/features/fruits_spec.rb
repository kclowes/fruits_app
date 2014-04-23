require 'spec_helper'

feature 'Fruits' do

  scenario 'user can visit the homepage and can see fruit that they entered' do
    visit '/'
    expect(page).to have_content('welcome!')
    click_on 'Add Fruit'
    fill_in 'name', with: 'Banana'
    fill_in 'description', with: 'Yellow'
    click_on 'Submit'
    expect(page).to have_content('Banana')
    expect(page).to have_content('Yellow')
  end

  scenario 'user can update an item' do
    visit '/'
    expect(page).to have_content('welcome!')
    click_on 'Add Fruit'
    fill_in 'name', with: 'Banana'
    fill_in 'description', with: 'Yellow'
    click_on 'Submit'
    expect(page).to have_content('Banana')
    expect(page).to have_content('Yellow')
    click_on 'Edit Banana'
    fill_in 'name', with: 'Apple'
    fill_in 'description', with: 'Red'
    click_on 'Submit'
    expect(page).to have_content('Apple')
    expect(page).to have_content('Red')
  end
end