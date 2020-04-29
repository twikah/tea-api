json.extract! @herb, :id, :name

json.herb_types @herb.herb_types do |herb_type|
  json.extract! herb_type, :id, :name
  # json.health_benefits herb_varietal.health_benefits do |health_benefit|
  #   json.extract! health_benefit, :id, :benefit
  # end
end
