# MovieHub

Rails app for managing your movie collection

## Quick Start

1. **Install dependencies:**

   ```bash
   bundle install
   ```

2. **Setup database:**

   ```bash
   rake db:migrate
   rake db:seed
   ```

3. **Start the server:**

   ```bash
   rails server
   ```

4. **Open in browser:**
   Go to: http://localhost:3000

## Features

- Create new movies with title, rating, description, and release date
- View all movies in a list
- Edit existing movies
- Delete movies
- View individual movie details

## Requirements

- Ruby (version 3.2 or compatible)
- Bundler gem
- SQLite3 (for database)

The app uses SQLite3 for development. The movies table has the following fields:

- title (string)
- rating (string)
- description (text)
- release_date (datetime)
- created_at (datetime)
- updated_at (datetime)

## Routes

- GET /movies - List all movies
- GET /movies/new - Form to create a new movie
- POST /movies - Create a new movie
- GET /movies/:id - Show a specific movie
- GET /movies/:id/edit - Form to edit a movie
- PATCH/PUT /movies/:id - Update a movie
- DELETE /movies/:id - Delete a movie
