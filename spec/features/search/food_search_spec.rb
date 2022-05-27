require 'rails_helper'


RSpec.describe 'Food Search' do
  
  describe 'As a Visitor' do

    it 'When I type in a food and click search I am on the foods page' do
      visit '/'

      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'
  
      expect(current_path).to eq('/foods')

    end 

  end 

end