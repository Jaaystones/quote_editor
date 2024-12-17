class CreateQuotes < ActiveRecord::Migration[8.0]
  def change
    create_table :quotes, if_not_exists: true do |t|
      t.string :name
      t.timestamps
    end
  end
end
