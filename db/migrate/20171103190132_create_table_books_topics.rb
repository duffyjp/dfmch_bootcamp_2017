class CreateTableBooksTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :books_topics do |t|
      t.references :book, foreign_key: true
      t.references :topic, foreign_key: true
    end
  end
end
