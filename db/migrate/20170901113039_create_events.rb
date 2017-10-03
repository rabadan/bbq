# migration event
class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.text :address
      t.datetime :datetime

      t.timestamps
    end
  end
end
