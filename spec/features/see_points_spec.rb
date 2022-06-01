RSpec.describe "To show player_2's points" do
  feature "the score" do
    scenario "is displayed" do
      sign_in_and_play
      expect(page).to have_content "Bella: 100 HP"
    end
  end
end
