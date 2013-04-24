class Row < ActiveRecord::Base
	belongs_to :document
  	attr_accessible :bringer_name_res, :certificate, :child_name, :comments, :date, 
  	:display_age, :display_nation, :document_id, :marks, :outcome, :page, :parents_name_res, 
  	:purpose_brought, :residing_with_name, :school, :search_age, :search_nation, :sex, 
  	:signatures, :search_reason, :search_outcome
end
