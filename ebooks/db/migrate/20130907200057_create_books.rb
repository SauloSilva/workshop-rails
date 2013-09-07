class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.references :user, index: true
      t.string :title
      t.string :author
      t.integer :edition
      t.date :published_at
      t.boolean :published

      t.timestamps
    end
  end
end
