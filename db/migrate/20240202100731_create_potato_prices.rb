class CreatePotatoPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :potato_prices do |t|
      t.datetime :time
      t.decimal :value

      t.timestamps
    end
  end
end
