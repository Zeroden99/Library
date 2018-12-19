class Userparam < ApplicationRecord
	belongs_to :user
	validates :name, :surname, :age, presence: true
	validates :name, :surname, length: 2..36
	validates :age, numericality: { only_integer: true }
end
