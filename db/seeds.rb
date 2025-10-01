# db/seeds.rb

puts "🗑️ Borrando datos anteriores..."
Restaurant.destroy_all
Category.destroy_all
User.destroy_all

puts "📂 Creando categorías..."
carnes      = Category.create!(name: "Carnes")
mariscos    = Category.create!(name: "Mariscos")
italiano    = Category.create!(name: "Italiano")
mexicano    = Category.create!(name: "Mexicano")
reposteria  = Category.create!(name: "Repostería")
vegano      = Category.create!(name: "Vegano")
sushi       = Category.create!(name: "Sushi")
china       = Category.create!(name: "China")
andino      = Category.create!(name: "Andino")
gourmet     = Category.create!(name: "Gourmet")

puts "👤 Creando usuarios..."
usuario1 = User.create!(email: "andres@gmail.com", password: "Ai218294")
usuario2 = User.create!(email: "usuario2@email.com", password: "password123")
usuario3 = User.create!(email: "usuario3@email.com", password: "password123")

puts "🍽️ Creando restaurantes del Usuario 1..."
usuario1.restaurants.create!([
  { name: "Parrilla Don José", address: "Calle Fuego #101", phone: "111111111", description: "Especialidad en carnes a la brasa con cortes nacionales.", category: carnes },
  { name: "Sabor Marino", address: "Av. Océano #202", phone: "111111112", description: "Mariscos frescos y pescados del día.", category: mariscos },
  { name: "La Pasta Italiana", address: "Av. Roma #303", phone: "111111113", description: "Pasta fresca hecha a mano todos los días.", category: italiano },
  { name: "El Rincón Mexicano", address: "Calle Sol #404", phone: "111111114", description: "Tacos, burritos y margaritas con sazón mexicana.", category: mexicano },
  { name: "Dulces Tentaciones", address: "Calle Dulce #505", phone: "111111115", description: "Pastelería artesanal con recetas tradicionales.", category: reposteria },
  { name: "Veggie Life", address: "Av. Verde #606", phone: "111111116", description: "Comida vegana con ingredientes orgánicos y frescos.", category: vegano },
  { name: "Sushi Express", address: "Calle Japón #707", phone: "111111117", description: "Sushi rápido y económico para llevar.", category: sushi },
  { name: "Carnes Premium", address: "Av. Fuego #808", phone: "111111118", description: "Carnes importadas preparadas a la parrilla.", category: carnes },
  { name: "Comida China Wok", address: "Calle Dragón #909", phone: "111111119", description: "Platos tradicionales chinos al wok.", category: china },
  { name: "Sabores Andinos", address: "Av. Montaña #1001", phone: "111111120", description: "Platos típicos de la gastronomía andina.", category: andino }
])

puts "🍽️ Creando restaurantes del Usuario 2..."
usuario2.restaurants.create!([
  { name: "Brasas del Sur", address: "Av. Fuego #110", phone: "222222111", description: "Carnes a la brasa con recetas de la zona sur.", category: carnes },
  { name: "Marisquería El Ancla", address: "Calle Puerto #220", phone: "222222112", description: "Ceviches y pescados frescos del día.", category: mariscos },
  { name: "Pizza Nápoles", address: "Av. Italia #330", phone: "222222113", description: "Pizzas a la piedra con ingredientes frescos.", category: italiano },
  { name: "Tacos y Tequila", address: "Calle Fiesta #440", phone: "222222114", description: "Comida mexicana y coctelería tradicional.", category: mexicano },
  { name: "La Dulcería", address: "Av. Azúcar #550", phone: "222222115", description: "Repostería creativa y pasteles personalizados.", category: reposteria },
  { name: "Green Bowl", address: "Calle Salud #660", phone: "222222116", description: "Bowls nutritivos veganos y vegetarianos.", category: vegano },
  { name: "Sushi Master", address: "Calle Japón #770", phone: "222222117", description: "Sushi y sashimi preparados al estilo tradicional.", category: sushi },
  { name: "Wok Oriental", address: "Av. Asia #880", phone: "222222118", description: "Comida china y tailandesa fusionada.", category: china },
  { name: "Sabores del Campo", address: "Calle Rural #990", phone: "222222119", description: "Platos típicos campesinos con ingredientes frescos.", category: andino },
  { name: "Gourmet Deluxe", address: "Av. Lujo #1002", phone: "222222120", description: "Alta cocina internacional con chefs invitados.", category: gourmet }
])

puts "🍽️ Creando restaurantes del Usuario 3..."
usuario3.restaurants.create!([
  { name: "La Gran Parrillada", address: "Av. Fuego #120", phone: "333333111", description: "Cortes de carne y asado al estilo argentino.", category: carnes },
  { name: "El Océano Azul", address: "Calle Mar #230", phone: "333333112", description: "Mariscos frescos y ostras seleccionadas.", category: mariscos },
  { name: "Trattoria Toscana", address: "Av. Florencia #340", phone: "333333113", description: "Comida italiana tradicional, focaccias y risotto.", category: italiano },
  { name: "Cantina Azteca", address: "Calle México #450", phone: "333333114", description: "Comida mexicana con música en vivo.", category: mexicano },
  { name: "Postres de Autor", address: "Av. Dulzura #560", phone: "333333115", description: "Repostería gourmet con creaciones originales.", category: reposteria },
  { name: "Vegan Power", address: "Calle Verde #670", phone: "333333116", description: "Platos veganos innovadores como hamburguesas vegetales.", category: vegano },
  { name: "Samurai Sushi", address: "Calle Japón #780", phone: "333333117", description: "Sushi premium con cortes exclusivos.", category: sushi },
  { name: "Asia Wok", address: "Av. Oriente #890", phone: "333333118", description: "Platos rápidos al wok con estilo asiático.", category: china },
  { name: "Cocina Criolla", address: "Calle Tradición #900", phone: "333333119", description: "Platos criollos preparados como en casa.", category: andino },
  { name: "Experiencia Gourmet", address: "Av. Élite #1003", phone: "333333120", description: "Menú de degustación con maridaje de vinos.", category: gourmet }
])

puts "✅ Seeds creados: #{User.count} usuarios, #{Category.count} categorías y #{Restaurant.count} restaurantes."
