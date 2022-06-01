RSpec.describe "player name form" do
  feature "form for player names" do
    scenario "players can enter their names and see them" do
      sign_in_and_play
      expect(page).to have_content "Player 1: Annabelle\nPlayer 2: Bella"
    end
  end
end
