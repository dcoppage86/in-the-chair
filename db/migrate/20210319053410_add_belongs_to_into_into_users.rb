class AddBelongsToIntoIntoUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :into_into_users, :belongs_to, :provider
  end
end
