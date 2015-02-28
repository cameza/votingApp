class Nominee < ActiveRecord::Base
	validates :nominee_mail, :nominee_name, :cv, :statement, :presence => true
	validates :nominee_mail, :uniqueness => true

end
