class CreateHomePages < ActiveRecord::Migration
  def change
    create_table :home_pages do |t|
      t.integer :post_id
      t.string :title
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
