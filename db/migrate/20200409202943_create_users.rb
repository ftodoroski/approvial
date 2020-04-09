class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password
      t.string :user_type
      t.string :email
      t.belongs_to :department

      t.timestamps
    end
  end
end
