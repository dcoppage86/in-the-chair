class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title
      t.integer :duration
      t.integer :cost
      t.text :description

      t.timestamps
    end
  end
end
