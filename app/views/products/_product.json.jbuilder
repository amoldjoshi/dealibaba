json.extract! product, :id, :productid, :productname, :producturl, :producttype, :productdescription, :productresearch, :productprice, :productbutton, :created_at, :updated_at
json.url product_url(product, format: :json)
