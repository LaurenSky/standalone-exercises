class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.belongs_to :assignment, index: true
      t.belongs_to :student, index:true
      t.string :grade

      t.timestamps null: false
    end
  end
end
