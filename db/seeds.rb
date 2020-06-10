# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Checking up database records..."

puts "Checking users..."
# user_rows = User.upsert(
#   { first_name: 'Vanessa', last_name: 'Santo',
#     email: 'teaapi_admin@gmail.com', encrypted_password: 'topsecret',
#     role: 'user', created_at: Time.now, updated_at: Time.now
#   }, returning: ['id'], unique_by: :email)

# user_id = user_rows[0]['id']

if User.find_by(email: 'teaapi_admin@gmail.com').nil?
  user = User.new(
    first_name: 'Vanessa', last_name: 'Santo',
    email: 'teaapi_admin@gmail.com', password: 'topsecret',
    password_confirmation: 'topsecret', confirmed_at: Time.now, role: 'user'
  )
  user.save!
end

user = User.find_by(email: 'teaapi_admin@gmail.com')
user_id = user.id

puts "Checking herbs..."
herb_rows = Herb.upsert_all([
  { name: "camellia sinensis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "glycyrrhiza glabra", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "arctium", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "taraxacum officinale", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "cichorium intybus", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "zingiber officinalet", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "prunus avium", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "cinnamomum verum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "salix alba", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "ulmus fulva", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "aspalathus linearis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "matricaria chamomilla", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "sambucus nigra", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "hibiscus sabdariffa", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "lavandula officinalis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "trifolium pratense", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "tilla vulgaris", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "aloysia triphylla", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "lamiaceae", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "melissa officinalis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "ilex paraguariensis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "ocimum tenuiflorum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "ocimum basilicum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "morus nigra", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "foeniculum vulgare", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "salvia officinalis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "vaccinium cyanococcus", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "elettaria cardamomum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "rosa canina", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "citrus × sinensis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "citrus × limon", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "citrus bergamia", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "punica granatum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "vanilla planifolia", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "calendula", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "helianthus annuus", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "syzygium aromaticum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "centaurea cyanus", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "cymbopogon citratus", user_id: user_id,
    created_at: Time.now, updated_at: Time.now }
], returning: %w[id name], unique_by: :name)

camellia_id = herb_rows[0]['id']
liquorice_id = herb_rows[1]['id']
burdock_id = herb_rows[2]['id']
dandelion_id = herb_rows[3]['id']
chicory_id = herb_rows[4]['id']
ginger_id = herb_rows[5]['id']
cinnamon_id = herb_rows[6]['id']
willow_id = herb_rows[7]['id']
slippery_elm_id = herb_rows[8]['id']
wild_cherry_id = herb_rows[9]['id']
rooibos_id = herb_rows[10]['id']
chamomile_id = herb_rows[11]['id']
elderflower_id = herb_rows[12]['id']
hibiscus_id = herb_rows[13]['id']
lavender_id = herb_rows[14]['id']
red_clover_id = herb_rows[15]['id']
lime_flower_id = herb_rows[16]['id']
lemon_verbena_id = herb_rows[17]['id']
mint_id = herb_rows[18]['id']
lemon_balm_id = herb_rows[19]['id']
yerba_mate_id = herb_rows[20]['id']
tulsi_id = herb_rows[21]['id']
basil_id = herb_rows[22]['id']
mulberry_leaf_id = herb_rows[23]['id']
fennel_id = herb_rows[24]['id']
sage_id = herb_rows[25]['id']
blueberries_id = herb_rows[26]['id']
cardamom_id = herb_rows[27]['id']
rose_id = herb_rows[28]['id']
orange_id = herb_rows[29]['id']
lemon_id = herb_rows[30]['id']
bergamot_id = herb_rows[31]['id']
pomegranate_id = herb_rows[32]['id']
vanilla_id = herb_rows[33]['id']
calendula_id = herb_rows[34]['id']
sunflower_id = herb_rows[35]['id']
cloves_id = herb_rows[36]['id']
cornflower_id = herb_rows[37]['id']
lemongrass_id = herb_rows[38]['id']

puts "Checking herb types..."
HerbType.upsert_all([
  { name: "black tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "white tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "dark tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "oolong tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "yellow tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "green tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "liquorice root", herb_id: liquorice_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "burdock root", herb_id: burdock_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "dandelion root", herb_id: dandelion_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "chicory root", herb_id: chicory_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "ginger root", herb_id: ginger_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "cinnamon bark", herb_id: cinnamon_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "cinnamon powder", herb_id: cinnamon_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "willow bark", herb_id: willow_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "slippery elm bark", herb_id: slippery_elm_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "wild cherry bark", herb_id: wild_cherry_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "rooibos", herb_id: rooibos_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "chamomile", herb_id: chamomile_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "elderflower", herb_id: elderflower_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "hibiscus", herb_id: hibiscus_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "lavender", herb_id: lavender_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "red clover", herb_id: red_clover_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "lime flower", herb_id: lime_flower_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "lemon verbena", herb_id: lemon_verbena_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "mint", herb_id: mint_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "lemon balm", herb_id: lemon_balm_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "yerba mate", herb_id: yerba_mate_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "tulsi", herb_id: tulsi_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "basil", herb_id: basil_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "mulberry leaf", herb_id: mulberry_leaf_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "fennel", herb_id: fennel_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "sage", herb_id: sage_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "blueberries", herb_id: blueberries_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "elderberries", herb_id: elderflower_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "cardamom", herb_id: cardamom_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "rose hips", herb_id: rose_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "rose petals", herb_id: rose_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "dried rose petals", herb_id: rose_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "rose extract", herb_id: rose_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "orange peel", herb_id: orange_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "orange zest", herb_id: orange_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "lemon peel", herb_id: lemon_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "lemon zest", herb_id: lemon_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "bergamot oil", herb_id: bergamot_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "bergamot peel", herb_id: bergamot_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "bergamot extract", herb_id: pomegranate_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "vanilla extract", herb_id: vanilla_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "calendula petals", herb_id: calendula_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "sunflower petals", herb_id: sunflower_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "cloves", herb_id: cloves_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "cornflower petals", herb_id: cornflower_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "lemongrass", herb_id: lemongrass_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now }
], returning: %w[id name], unique_by: :name)

puts "Checking misc ingredients..."
MiscIngredient.upsert_all([
  { name: "rice", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "cacao nibs", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "dark chocolate", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "dried pear", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "roasted walnuts", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "dried apricot", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "dried strawberries", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "dried mango", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "dissecated coconut", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "dried cherry", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "roasted almond", user_id: user_id,
    created_at: Time.now, updated_at: Time.now }
], unique_by: :name)

Herb.find_each(&:save!)
HerbType.find_each(&:save!)
MiscIngredient.find_each(&:save!)

puts "Seeded!"
