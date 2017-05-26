feature 'Switching turns' do

  scenario 'Allow game to start with Player 1' do
    sign_in_and_play
    expect(page).to have_content 'Turn: Kavita'
  end

  scenario 'Allow game to switch turn from Player 1 to Player 2' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button('OK')
    expect(page).to have_content 'Turn: Prabu'
  end

end
