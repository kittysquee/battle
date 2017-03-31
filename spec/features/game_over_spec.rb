feature "player 2 loses" do
  scenario "player 2 reaches 0 hp and subsequently loses their life" do
    sign_in_and_play
    9.times { attack_and_confirm }
    expect(page).to have_content "Pixel has been royally fucked!"
  end
end
