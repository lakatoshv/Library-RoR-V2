class Book < ApplicationRecord
	acts_as_votable
	#belongs_to :user
	has_many :vidguks
	has_many :kritics
	#belongs_to :zhanr
	validates :title, :auth, :zhanr, :pages_qty, :description, :image_url, :mini_description, :url_to_book, :name_of_file, :language, :rozshirennya,  :origin_url_to_book,  :presence => true
	def self.search(search)
		where(['title LIKE ? OR auth LIKE ? OR zhanr LIKE ? OR description LIKE ? ', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])

	end	

	has_attached_file :image_url, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_url, content_type: /\Aimage\/.*\z/

end
