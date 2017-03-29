feature 'Attack confirmation' do
  scenario 'Player 1 attacks player 2 and gets confirmation' do
    sign_in_and_play
    click_button "HIT!"
    expect(page).to have_content "POW! Elaine attacks Pixel"
  end

  scenario 'when Player 1 attacks player 2 HP should be reduced by 10' do
    sign_in_and_play
    click_button "HIT!"
    expect(page).not_to have_content "Pixel's hit points: 50HP"
    expect(page).to have_content "Pixel's hit points: 40HP"
  end
end
