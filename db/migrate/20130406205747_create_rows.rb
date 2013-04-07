class CreateRows < ActiveRecord::Migration
  def change
    create_table :rows do |t|
      t.integer :document_id
      t.integer :page
      t.string :date
      t.integer :certificate
      t.string :child_name
      t.string :display_age
      t.string :sex
      t.string :display_nation
      t.string :marks
      t.string :residing_with_name
      t.string :parents_name_res
      t.string :bringer_name_res
      t.string :purpose_brought
      t.string :signatures
      t.string :school
      t.string :outcome
      t.string :comments
      t.string :search_age
      t.string :search_nation

      t.timestamps
    end
  end
end
