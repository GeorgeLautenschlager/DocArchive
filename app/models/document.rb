class Document < ActiveRecord::Base
	has_many :rows

 	attr_accessible :description, :name
end
