feature 'Attacking player' do
  scenario 'Player 1 attacks Player 2 and gets confirmation' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'You attacked Prabu!'
  end

  scenario 'Player 2 attacks Player 1 and gets confirmation' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button('OK')
    click_button('ATTACK!')
    expect(page).to have_content 'You attacked Kavita!'
  end

  scenario 'reduce Player 2 HP when attacked' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content 'Prabu: 90HP'
  end
end
