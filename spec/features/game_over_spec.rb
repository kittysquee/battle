feature 'game over' do
  context 'player 1 reaches 0HP first' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return 50
    end

    scenario 'player 1 loses' do
      click_button 'HIT!'
      expect(page).to have_content 'Elaine loses!'
    end
  end
end
