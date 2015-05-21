json.array!(@contracts) do |contract|
  json.extract! contract, :id, :desc, :region, :value, :saving, :supplier, :contact, :dept, :download, :validFrom, :validTo
  json.url contract_url(contract, format: :json)
end
