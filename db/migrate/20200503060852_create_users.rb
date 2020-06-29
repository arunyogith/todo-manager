class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :password, :string
    end
  end
end
