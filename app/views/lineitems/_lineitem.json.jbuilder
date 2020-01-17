json.extract! lineitem, :id, :quantity, :order_id, :product_id, :created_at, :updated_at
json.url lineitem_url(lineitem, format: :json)
