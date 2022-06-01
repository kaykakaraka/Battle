RSpec.describe "players attack" do
  feature "player 1 attacks player 2" do
    scenario "show a confirmation" do
      sign_in_and_play
      click_on 'Player 1 attack'
      expect(page).to have_content "Annabelle attacked Bella"
    end

    scenario "player 2's HP reduces by 10 HP" do
      sign_in_and_play
      click_on 'Player 1 attack'
      expect(page).to have_content 'Bella: 90 HP'
    end
  end
end