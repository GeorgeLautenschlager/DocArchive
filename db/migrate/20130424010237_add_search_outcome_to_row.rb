class AddSearchOutcomeToRow < ActiveRecord::Migration
  def up
  	change_table :rows do |t|
  		t.string :search_outcome
  	end
  end

  def down
  	change_table :rows do |t|
  		t.remove :search_outcome
  	end
  end
end
