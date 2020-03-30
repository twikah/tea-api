json.array! @herbs do |herb|
  json.extract! herb, :id, :name
end
