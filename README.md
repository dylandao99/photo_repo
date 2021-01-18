# Photo Repo

A Ruby-on-Rails-based photo repository made for the Shopify 2021 Summer Internship Application. Front-end is built to exercise all backend features, but is minimal and was not my focus for this project. 

## Features
- User account creation/authentication
- Upload/Delete photos in bulk, associated to user accounts
- Public/Private photo permissions
- Public photos page, displaying photos uploaded by all users marked as "Public"
- User photos page, where users can view all photos they have uploaded

## Dependencies
Standard Ruby-on-Rails Pre-requisites:
- Ruby
- Sqlite3
- Node.js
- Yarn

Ruby Gems:
- `rails`: Web framework
- `bcrypt`: Password hashing and authentication

## Local Setup Instructions (Linux)
1. `cd` to destination folder.
2. `git clone https://github.com/dylandao99/photo_repo.git`
3. In repo's root directory, run `bin/rails server'
4. Navigate web browser to `127.0.0.1:3000`.

## Improvements to Consider
- Uses Sqlite3 to maintain portability, but would switch to MySQL or PostgreSQL for concurrent database operations for deployment.
- Front-end needs a huge overhaul to intuitively place web elements. Should use Bootstrap `flexbox` to place photos.
- Image search and filter
