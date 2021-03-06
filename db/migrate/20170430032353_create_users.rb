class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :company_id

      t.timestamps
    end
    add_index :users, :company_id
  end
end
