# db/seeds.rb

# Limpiar datos previos
Restaurant.destroy_all
User.destroy_all

# Crear usuarios
usuario1 = User.create!(
  email: "andres@gmail.com",
  password: "Ai218294"
)

usuario2 = User.create!(
  email: "usuario2@email.com",
  password: "password123"
)

usuario3 = User.create!(
  email: "usuario3@email.com",
  password: "password123"
)

# Restaurantes para usuario 1 (3)
usuario1.restaurants.create!([
  { name: "Restaurante La Parrilla", address: "Calle 1 #123", phone: "111111111" },
  { name: "Restaurante El Mar", address: "Calle 2 #456", phone: "222222222" },
  { name: "Restaurante Los Postres", address: "Calle 3 #789", phone: "333333333" }
])

# Restaurantes para usuario 2 (2)
usuario2.restaurants.create!([
  { name: "Restaurante Italiano", address: "Avenida 10 #111", phone: "444444444" },
  { name: "Restaurante Mexicano", address: "Avenida 20 #222", phone: "555555555" }
])

# Restaurantes para usuario 3 (4)
usuario3.restaurants.create!([
  { name: "Restaurante Japonés", address: "Calle Japón #333", phone: "666666666" },
  { name: "Restaurante Vegano", address: "Calle Verde #444", phone: "777777777" },
  { name: "Restaurante Gourmet", address: "Calle Oro #555", phone: "888888888" },
  { name: "Restaurante Familiar", address: "Calle Hogar #666", phone: "999999999" }
])

puts "✅ Seeds creados: #{User.count} usuarios y #{Restaurant.count} restaurantes."
