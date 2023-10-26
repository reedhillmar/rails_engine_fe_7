require 'rails_helper'

feature 'Merchant Index' do
  describe "As a visitor, when I visit '/merchants'" do
    it 'I see a list of merchants by name' do
      visit '/merchants'

      expect(page).to have_link("Schroeder-Jerde")
      expect(page).to have_link("Glover Inc")
    end

    it "each merchant links to a page that shows each of that merchant's items" do
      visit '/merchants'

      click_link 'Schroeder-Jerde'
save_and_open_page
      expect(current_path).to eq(merchant_path(1))
      expect(page).to have_content("Schroeder-Jerde's Items")
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Ea Voluptatum")
    end
  end
end