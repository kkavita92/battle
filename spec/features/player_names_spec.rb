feature 'Enter and view player names' do
  scenario 'Print player names' do
    visit ('/')
    fill_in('player1_name', with: 'Kavita')
    fill_in('player2_name', with: 'Prabu')
    click_button('Submit')
    expect(page).to have_content 'Kavita VS Prabu'
  end
end

feature 'View hit points of players' do
  scenario 'Print hit points of Player 2' do
    visit ('/')
    fill_in('player1_name', with: 'Kavita')
    fill_in('player2_name', with: 'Prabu')
    click_button('Submit')
    expect(page).to have_content 'Prabu: 100HP'
  end
end
