feature 'Switching turns' do

  scenario 'Allow game to start with Player 1' do
    sign_in_and_play
    expect(page).to have_content "It's Kavita's turn now!"
  end

  scenario 'Allow game to switch turn from Player 1 to Player 2' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button('OK')
    expect(page).to have_content "It's Prabu's turn now!"
  end

end
