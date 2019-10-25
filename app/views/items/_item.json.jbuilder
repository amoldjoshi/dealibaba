json.extract! item, :id, :itemname, :itemurl, :itemprice, :itembutton, :itemdescription, :article_id, :created_at, :updated_at
json.url item_url(item, format: :json)
