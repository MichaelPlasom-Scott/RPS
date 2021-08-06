def enter_name_and_submit
  visit('/')
  fill_in :player_name, with: 'Michael'
  click_button 'Submit'
end
