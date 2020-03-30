# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Checking up database records..."

def ensure_user(attrs)
  User.find_by(email: attrs[:email]) || User.create!(attrs)
end

def ensure_herb(attrs)
  Herb.find_by(name: attrs[:name]) || Herb.create!(attrs)
end

def ensure_herb_varietal(attrs)
  HerbVarietal.find_by(name: attrs[:name]) || HerbVarietal.create!(attrs)
end

def ensure_health_benefits(attrs)
  HealthBenefit.find_by(benefit: attrs[:benefit]) || HealthBenefit.create!(attrs)
end

def ensure_ingredients_benefits(attrs)
  IngredientsBenefit.find_by(health_benefit: attrs[:health_benefit],
                             benefitable: attrs[:benefitable]) ||
  IngredientsBenefit.create!(attrs)
end

herbs = []
herb_varietals = []
health_benefits = []
ingredients_benefits = []

puts "Checking admin user..."
user = ensure_user(
  email: 'vanessaesanto@hotmail.com', password: '123456'
)

puts "Checking herbs..."
Herb.transaction do
  herbs = [
    ensure_herb(name: "Camellia Sinensis", user: user),
    ensure_herb(name: "Rooibos", user: user),
    ensure_herb(name: "Chamolile", user: user)
  ]
end

puts "Checking herb varietals"
HerbVarietal.transaction do
  herb_varietals = [
    ensure_herb_varietal(
      herb_type: "Black tea", name: "Assam tea",
      herb: herbs[0], user: user
    ),
    ensure_herb_varietal(
      herb_type: "White tea", name: "Shou Mei tea",
      herb: herbs[0], user: user
    ),
    ensure_herb_varietal(
      herb_type: "Yellow tea", name: "Jun Shan Yin Zhen tea",
      herb: herbs[0], user: user
    ),
    ensure_herb_varietal(
      herb_type: "Dark tea", name: "Pu'er tea",
      herb: herbs[0], user: user
    ),
    ensure_herb_varietal(
      herb_type: "Green tea", name: "Sencha tea",
      herb: herbs[0], user: user
    ),
    ensure_herb_varietal(
      herb_type: "Oolong tea", name: "Tie Guan Yin tea",
      herb: herbs[0], user: user
    )
  ]
end

puts "Checking health benefits..."
HealthBenefit.transaction do
  health_benefits = [
    ensure_health_benefits(
      benefit: "Antioxidant", user: user
    ),
    ensure_health_benefits(
      benefit: "Reduce blood pressure", user: user
    )
  ]
end

puts "Checking herb varietal benefits..."
IngredientsBenefit.transaction do
  ingredients_benefits = [
    # black tea antioxidant
    ensure_ingredients_benefits(
      health_benefit: health_benefits[0], benefitable: herb_varietals[0], user: user
    ),
    # black tea blood pressure
    ensure_ingredients_benefits(
      health_benefit: health_benefits[1], benefitable: herb_varietals[0], user: user
    ),
    #  white tea antioxidant
    ensure_ingredients_benefits(
      health_benefit: health_benefits[0], benefitable: herb_varietals[1], user: user
    )
  ]
end

puts "Seeded!"
