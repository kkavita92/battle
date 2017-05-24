feature 'First test' do
    scenario 'Print requested string on home page' do
      visit ('/')
      fill_in('player1', with: 'Kavita')
      fill_in('player2', with: 'Prabu')
      click_button('Submit')
      expect(page).to have_content 'Kavita VS Prabu'
    end
end
