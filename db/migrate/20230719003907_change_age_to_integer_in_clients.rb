class ChangeAgeToIntegerInClients < ActiveRecord::Migration[7.0]
  def up
    change_column :clients, :age, :integer, using: "age::integer"
  end

  def down
    change_column :clients, :age, :string
  end
end
