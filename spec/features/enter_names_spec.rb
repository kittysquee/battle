feature 'Enter names' do
  scenario 'Can fill in name in form and submit with name returned' do
    visit('/names')
    fill_in :player_1_name, with: 'Elaine'
    fill_in :player_2_name, with: 'Pixel'
    click_button 'Submit'
    expect(page).to have_content 'Elaine vs. Pixel'
  end
end
