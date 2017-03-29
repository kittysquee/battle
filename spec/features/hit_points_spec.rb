feature 'Viewing hit points' do
  scenario 'player 1 should see player 2\'s hit points' do
    visit('/names')
    fill_in :player_1_name, with: 'Elaine'
    fill_in :player_2_name, with: 'Pixel'
    click_button 'Submit'
    expect(page).to have_content "Pixel's hit points: 50HP"
  end
end
