json.extract! home_page, :id, :post_id, :title, :user_id, :created_at, :updated_at
json.url home_page_url(home_page, format: :json)