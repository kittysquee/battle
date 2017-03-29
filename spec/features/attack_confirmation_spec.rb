feature 'Attack confirmation' do
  scenario 'Player 1 attacks player 2 and gets confirmation' do
    sign_in_and_play
    click_button "HIT!"
    expect(page).to have_content "POW! Elaine attacks Pixel"
  end
end
