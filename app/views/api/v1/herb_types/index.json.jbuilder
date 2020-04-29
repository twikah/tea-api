json.array! @herb_types do |herb_type|
  json.extract! herb_type, :id, :name

  json.herb do
    json.id herb_type.herb.id
    json.name herb_type.herb.name
  end
end

