class AddColumnsToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.string :firstname
      t.string :lastname
      t.boolean :admin, :default => false
    end
  end
end
