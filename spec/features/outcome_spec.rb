feature 'Enter names' do
  scenario 'submitting names' do
    enter_name_and_submit
    find("option[value='Rock']").select_option
    click_button 'Submit'
    expect(page).to have_content 'Michael picked Rock'
  end
end
