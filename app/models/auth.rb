class Auth < ApplicationRecord
	acts_as_votable
	def self.search(search)
		where([' auth LIKE ? ', "%#{search}%"])
		where(['book LIKE ? OR auth LIKE ? ', "%#{search}%", "%#{search}%"])
	end	
end
