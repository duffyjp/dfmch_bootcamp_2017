class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.references :person, foreign_key: true
      t.references :book, foreign_key: true
      t.date :due_date
      t.date :return_date

      t.timestamps
    end
  end
end
