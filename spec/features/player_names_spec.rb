feature 'First test' do
    scenario 'Print requested string on home page' do
      visit ('/')
      fill_in('player1_name', with: 'Kavita')
      fill_in('player2_name', with: 'Prabu')
      click_button('Submit')
      expect(page).to have_content 'Kavita VS Prabu'
    end
end
