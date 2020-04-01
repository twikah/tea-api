# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Checking up database records..."

puts "Checking users..."
user_rows = User.upsert(
  { email: 'vanessaesanto@hotmail.com', encrypted_password: '123456',
    created_at: Time.now, updated_at: Time.now
  }, returning: ['id'], unique_by: :email)

user_id = user_rows[0]['id']

puts "Checking herbs..."
herb_rows = Herb.upsert_all([
  { name: "Camellia sinensis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Glycyrrhiza glabra", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Arctium", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Taraxacum officinale", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Cichorium intybus", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Zingiber officinalet", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Prunus avium", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Cinnamomum verum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Salix alba", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Ulmus fulva", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Aspalathus linearis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Matricaria chamomilla", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Sambucus nigra", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Hibiscus sabdariffa", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Lavandula officinalis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Trifolium pratense", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Tilla vulgaris", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Aloysia triphylla", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Lamiaceae", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Melissa officinalis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Ilex paraguariensis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Ocimum tenuiflorum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Ocimum basilicum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Morus nigra", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Foeniculum vulgare", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Salvia officinalis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Vaccinium cyanococcus", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Elettaria cardamomum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Rosa canina", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Citrus × sinensis", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Citrus × limon", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Citrus bergamia", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Punica granatum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Vanilla planifolia", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Calendula", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Helianthus annuus", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Syzygium aromaticum", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Centaurea cyanus", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Cymbopogon citratus", user_id: user_id,
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
  { name: "Black tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "White tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Dark tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Oolong tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Yellow tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Green tea", herb_id: camellia_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Liquorice root", herb_id: liquorice_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Burdock root", herb_id: burdock_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Dandelion root", herb_id: dandelion_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Chicory root", herb_id: chicory_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Ginger root", herb_id: ginger_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Cinnamon bark", herb_id: cinnamon_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Cinnamon powder", herb_id: cinnamon_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Willow bark", herb_id: willow_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Slippery Elm bark", herb_id: slippery_elm_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Wild Cherry bark", herb_id: wild_cherry_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Rooibos", herb_id: rooibos_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Chamomile", herb_id: chamomile_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Elderflower", herb_id: elderflower_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Hibiscus", herb_id: hibiscus_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Lavender", herb_id: lavender_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Red Clover", herb_id: red_clover_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Lime Flower", herb_id: lime_flower_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Lemon Verbena", herb_id: lemon_verbena_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Mint", herb_id: mint_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Lemon Balm", herb_id: lemon_balm_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Yerba Mate", herb_id: yerba_mate_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Tulsi", herb_id: tulsi_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Basil", herb_id: basil_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Mulberry Leaf", herb_id: mulberry_leaf_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Fennel", herb_id: fennel_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Sage", herb_id: sage_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Blueberries", herb_id: blueberries_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Elderberries", herb_id: elderflower_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Cardamom", herb_id: cardamom_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Rose hips", herb_id: rose_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Rose petals", herb_id: rose_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Dried Rose petals", herb_id: rose_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Rose extract", herb_id: rose_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Orange peel", herb_id: orange_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Orange zest", herb_id: orange_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Lemon peel", herb_id: lemon_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Lemon zest", herb_id: lemon_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Bergamot oil", herb_id: bergamot_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Bergamot peel", herb_id: bergamot_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Bergamot extract", herb_id: pomegranate_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Vanilla extract", herb_id: vanilla_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Calendula petals", herb_id: calendula_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Sunflower petals", herb_id: sunflower_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Cloves", herb_id: cloves_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Cornflower petals", herb_id: cornflower_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Lemongrass", herb_id: lemongrass_id, user_id: user_id,
    created_at: Time.now, updated_at: Time.now }
], returning: %w[id name], unique_by: :name)

puts "Checking misc ingredients..."
MiscIngredient.upsert_all([
  { name: "Rice", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Cacao nibs", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Dark chocolate", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Dried Pear", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Roasted walnuts", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Dried apricot", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Dried strawberries", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Dried mango", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Dissecated coconut", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Dried cherry", user_id: user_id,
    created_at: Time.now, updated_at: Time.now },
  { name: "Roasted almond", user_id: user_id,
    created_at: Time.now, updated_at: Time.now }
], unique_by: :name)

puts "Seeded!"
