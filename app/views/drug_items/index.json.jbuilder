json.array!(@drug_items) do |drug_item|
  json.extract! drug_item, :id
  json.url drug_item_url(drug_item, format: :json)
end
