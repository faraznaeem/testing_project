class CreateAdverts < ActiveRecord::Migration[6.0]
  def change
    create_table :adverts do |t|
      t.string :title
      t.text :description
      t.money :price

      t.timestamps
    end
  end
end
