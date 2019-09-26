class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :author
      t.text :content

      t.timestamps null: false
    end
  end
end
