json.extract! product, :id, :productid, :productname, :producturl, :producttype, :productdescription, :productprice, :productbutton, :created_at, :updated_at
json.url product_url(product, format: :json)
