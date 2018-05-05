class AboutProgram < ApplicationRecord
	validates :version, :subversion, :made,  :presence => true
end
