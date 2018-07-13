class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :title
      t.string :symbol
      t.text :description

      t.timestamps
    end
  end
end
