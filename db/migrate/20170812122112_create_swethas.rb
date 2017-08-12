class CreateSwethas < ActiveRecord::Migration
  def change
    create_table :swethas do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
