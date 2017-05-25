feature 'Attacking player' do
  scenario 'Attack other player and get confirmation' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'You attacked Prabu!'
  end

  scenario 'reduce Player 2 HP when attacked' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'Prabu: 90HP'
  end

end
