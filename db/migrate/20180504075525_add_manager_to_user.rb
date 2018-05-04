class AddManagerToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :manager, index: true, null: true
  end
end
