class Kritic < ApplicationRecord
	acts_as_votable
	belongs_to :book
	belongs_to :user
	def self.search(search)
		where([' title_book LIKE ? ', "%#{search}%"])

	end	
end
