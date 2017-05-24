feature 'First test' do
    scenario 'Print requested string on home page' do
      visit ('/')
      expect(page).to have_content 'Testing infrastructure working!'
    end
end
