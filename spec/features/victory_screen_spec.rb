feature 'End Screen' do
  scenario 'win' do
    enter_name_and_submit
    click_button 'Rock'
    visit '/end_screen_win'
    expect(page).to have_content 'You Win!'
  end
  scenario 'lose' do
    enter_name_and_submit
    click_button 'Rock'
    visit '/end_screen_lose'
    expect(page).to have_content 'You Lose!'
  end
end
