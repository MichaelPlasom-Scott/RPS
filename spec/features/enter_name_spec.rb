# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter names' do
  scenario 'submitting names' do
    enter_name_and_submit
    # save_and_open_page
    expect(page).to have_content 'Michael! Rock, Paper, or Scissors?'
  end
end
