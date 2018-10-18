json.extract! product, :id, :title, :price, :description, :condition, :created_at, :updated_at
json.url product_url(product, format: :json)
