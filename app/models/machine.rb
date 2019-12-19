class Machine < ApplicationRecord
  validates_presence_of :location

  belongs_to :owner

  has_many :machine_snacks
  has_many :snacks, through: :machine_snacks

  validates_presence_of :location

  def average
    snacks.average(:price)
  end
end
