class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.belongs_to :teacher, index: true
      t.belongs_to :student, index: true

      t.timestamps null: false
    end
  end
end
