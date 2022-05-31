RSpec.describe "To show player_2's points" do
  feature "the score" do
    scenario "is displayed" do
      visit ("/")
      fill_in "Player_1", with: "Annabelle"
      fill_in "Player_2", with: "Bella"
      click_on "Submit"

      expect(page).to have_content "Player 1: Annabelle has 100 points\nPlayer 2: Bella has 100 points"
    end
  end
end
