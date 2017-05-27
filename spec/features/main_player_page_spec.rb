feature 'Enter and view player names' do
  scenario 'Print player names' do
    sign_in_and_play
    expect(page).to have_content 'Kavita VS Prabu'
  end
end

feature 'View hit points of players' do
  scenario 'Print hit points of Player 2' do
    sign_in_and_play
    expect(page).to have_content 'Prabu: 100HP'
  end

  scenario 'Print hit points of Player 1' do
    sign_in_and_play
    expect(page).to have_content 'Kavita: 100HP'
  end
end
