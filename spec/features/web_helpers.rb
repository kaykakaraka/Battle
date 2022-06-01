def sign_in_and_play 
  visit ("/")
  fill_in "Player_1", with: "Annabelle"
  fill_in "Player_2", with: "Bella"
  click_on "Submit"
end