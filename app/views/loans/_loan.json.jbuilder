json.extract! loan, :id, :person_id, :book_id, :due_date, :return_date, :created_at, :updated_at
json.url loan_url(loan, format: :json)
