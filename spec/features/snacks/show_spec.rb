require 'rails_helper'

RSpec.describe 'As A Visitor' do
  before(:each) do
    @foxy = Owner.create!(name: 'Foxy')

    @turing_machine = @foxy.machines.create!(location: 'Turing')

    @candy = @turing_machine.snacks.create!(name: 'candy', price: 1.50)
    @chips = @turing_machine.snacks.create!(name: 'chips', price: 1.00)


    @home_machine = @foxy.machines.create!(location: 'Home')

    @candy = @home_machine.snacks.create!(name: 'candy', price: 1.50)
    @chips = @home_machine.snacks.create!(name: 'chips', price: 1.00)
  end

  it 'user story 3' do
    visit "/snacks/#{@candy.id}"

    expect(page).to have_content(@candy.name)
    expect(page).to have_content(@candy.price)

    expect(page).to have_content('Turing')
    expect(page).to have_content('Home')
  end
end





# User Story 3 of 3
#
# As a visitor
# When I visit a snack show page
# I see the name of that snack
#   and I see the price for that snack
#   and I see a list of locations with vending machines that carry that snack
#   and I see the average price for snacks in those vending machines
#   and I see a count of the different kinds of items in that vending machine.
