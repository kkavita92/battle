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
end

feature 'Attack player' do
  scenario 'Attack other player and get confirmation' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'You attacked Prabu!'
  end
end
