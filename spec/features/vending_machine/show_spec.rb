require 'rails_helper'

RSpec.describe 'As A Visitor' do
  before(:each) do
    @foxy = Owner.create!(name: 'Foxy')

    @turing_machine = @foxy.machines.create!(location: 'Turing')

    @candy = @turing_machine.snacks.create!(name: 'candy', price: 1.50)
    @chips = @turing_machine.snacks.create!(name: 'chips', price: 1.00)
  end

  it 'shows each snack name and price associated with the vending machine' do
    visit "/vending_machine/#{@turing_machine.id}"

    expect(page).to have_content(@candy.name)
    expect(page).to have_content(@candy.price)
    expect(page).to have_content(@chips.name)
    expect(page).to have_content(@chips.price)
  end
end


#
# User Story 1 of 3
#
# As a visitor
# When I visit a vending machine show page
# I see the name of all of the snacks associated with that vending machine along with their price
