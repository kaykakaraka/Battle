RSpec.describe "player name form" do

  feature 'form for player names' do
    scenario 'players can enter their names and see them' do
      visit ('/')
      fill_in 'Player_1', with: "Annabelle"
      fill_in 'Player_2', with: "Bella"
      click_on 'Submit'
      expect(page).to have_content "Player 1: Annabelle,\nPlayer 2: Bella"
    end
  end

end
