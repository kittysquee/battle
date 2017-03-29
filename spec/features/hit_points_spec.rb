feature 'Viewing hit points' do
  scenario 'player 1 should see player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content "Pixel's hit points: 50HP"
  end
end
