class AddSearchReasonToRow < ActiveRecord::Migration
  def up
  	change_table :rows do |t|
  		t.string :search_reason
  	end
  end

  def down
  	change_table :rows do |t|
  		t.remove :search_reason
  	end
  end
end
