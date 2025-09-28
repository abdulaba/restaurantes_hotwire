# Restaurantes Hotwire

Una aplicación web desarrollada en Ruby on Rails que permite a los usuarios gestionar restaurantes utilizando Hotwire (Turbo + Stimulus) para una experiencia de usuario moderna y reactiva.

## Características

- **Autenticación de usuarios** con Devise
- **Gestión de restaurantes** (CRUD completo)
- **Interfaz reactiva** con Hotwire Turbo Frames y Turbo Streams
- **Diseño responsivo** con Bootstrap 5
- **Base de datos PostgreSQL**

## Tecnologías utilizadas

- **Ruby** 3.3.5
- **Rails** 7.1.5
- **PostgreSQL** como base de datos
- **Hotwire** (Turbo Rails + Stimulus) para interactividad
- **Bootstrap 5** para el diseño
- **Devise** para autenticación
- **Simple Form** para formularios
- **Font Awesome** para iconos

## Funcionalidades

### Usuarios
- Registro y autenticación de usuarios
- Gestión de sesiones
- Cada usuario puede tener múltiples restaurantes

### Restaurantes
- Crear nuevos restaurantes
- Listar restaurantes del usuario
- Ver detalles de un restaurante
- Editar información del restaurante
- Eliminar restaurantes
- Campos: nombre, dirección, teléfono

### Experiencia de usuario
- Navegación fluida sin recargas de página completa (Turbo)
- Actualizaciones en tiempo real con Turbo Streams
- Interfaz moderna y responsiva

## Instalación y configuración

### Prerrequisitos
- Ruby 3.3.5
- PostgreSQL
- Node.js (para el manejo de assets)

### Pasos de instalación

1. Clonar el repositorio:
```bash
git clone <repository-url>
cd restaurantes_hotwire
```

2. Instalar las dependencias:
```bash
bundle install
```

3. Configurar la base de datos:
```bash
rails db:create
rails db:migrate
```

4. Instalar dependencias de JavaScript:
```bash
rails assets:precompile
```

5. Iniciar el servidor:
```bash
rails server
```

La aplicación estará disponible en `http://localhost:3000`

## Estructura del proyecto

### Modelos
- **User**: Gestiona la autenticación y relaciones con restaurantes
- **Restaurant**: Almacena información de restaurantes (nombre, dirección, teléfono)

### Controladores
- **PagesController**: Maneja la página principal
- **Users::RestaurantsController**: Gestiona las operaciones CRUD de restaurantes

### Rutas principales
- `/` - Página principal
- `/users/sign_in` - Inicio de sesión
- `/users/sign_up` - Registro
- `/users/restaurants` - Lista de restaurantes del usuario
- `/users/restaurants/new` - Crear nuevo restaurante

## Base de datos

### Tablas principales
- **users**: Información de usuarios (email, password, etc.)
- **restaurants**: Información de restaurantes con referencia al usuario propietario

## Docker

El proyecto incluye un `Dockerfile` para containerización:

```bash
docker build -t restaurantes-hotwire .
docker run -p 3000:3000 restaurantes-hotwire
```

## Testing

El proyecto incluye configuración para testing con:
- Capybara para testing de sistema
- Selenium WebDriver para testing del navegador

Para ejecutar los tests:
```bash
rails test
```

## Desarrollo

### Estilo de código
- El proyecto usa RuboCop para mantener consistencia en el código
- Configuración disponible en `.rubocop.yml`

### Variables de entorno
- Utiliza dotenv-rails para gestión de variables de entorno
- Crear archivo `.env` para configuraciones locales

## Contribución

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit tus cambios (`git commit -am 'Agregar nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Crea un Pull Request

## Licencia

Este proyecto fue generado con [lewagon/rails-templates](https://github.com/lewagon/rails-templates), creado por el equipo de [Le Wagon coding bootcamp](https://www.lewagon.com).