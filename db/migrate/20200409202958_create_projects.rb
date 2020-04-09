class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :description
      t.belongs_to :user
      t.float :budget
      t.string :submitted_date
      t.string :required_completion_date
      t.string :approved_date
      t.string :approved_by
      t.string :completed_date
      t.string :status
      t.belongs_to :location

      t.timestamps
    end
  end
end
