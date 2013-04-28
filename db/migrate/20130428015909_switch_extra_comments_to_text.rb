class SwitchExtraCommentsToText < ActiveRecord::Migration
  def up
  	change_column :rows, :comments, :text	
  end

  def down
	change_column :rows, :comments, :text
  end
end
