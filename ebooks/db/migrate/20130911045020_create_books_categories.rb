class CreateBooksCategories < ActiveRecord::Migration
  def change
    create_table :books_categories, id: false do |t|
      t.references :category, index: true
      t.references :book, index: true

      t.timestamps
    end

    add_index :books_categories, [:category_id, :book_id], unique: true
  end
end
