class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.datetime :due_date
      t.belongs_to :subject, index: true

      t.timestamps null: false
    end
  end
end
