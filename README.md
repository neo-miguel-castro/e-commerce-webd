# Duelist Kingdom Cards E-commerce Platform

Welcome to Duelist Kingdom Cards, an e-commerce platform dedicated to the passionate community of Yugioh Trading Card Game enthusiasts. Our platform offers an extensive collection of Yugioh cards, categorized into Monsters, Spells, Traps, and Extra Deck cards, providing a seamless and intuitive shopping experience for collectors and players alike.

> NOTE: This is a demo project for WEBD class, this will not be used for any commercial purposes and is only used as a learning experience. Also it is using code from Waroong open source e-commerce repository to create a quick base-line.

## Features

- A rich selection of Yugioh cards, with detailed descriptions and images.
- User authentication system for secure access and personalized experience.
- A shopping cart for users to manage their purchases.
- An admin interface for managing product listings and orders.
- A visually appealing homepage with a slider showcasing featured cards or promotions.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Ruby on Rails 7
- PostgreSQL
- NPM (for JavaScript dependencies)

### Installation

1. Clone the repository:

```bash
git clone https://github.com/your-username/duelist-kingdom.git
```

1. Navigate to the project directory:

```bash
cd duelist-kingdom
```

1. Install Ruby and JavaScript dependencies:

```bash
bundle install
npm i
```

1. Create and set up the database:

```bash
bundle exec rails db:reset db:setup
```

5\. Start the Rails server:

```bash
bin/dev
```

6\. Visit `http://localhost:3000` in your browser to view the application.

### Troubleshooting

- **Admin Access**: If you need to access the admin functionalities add `/admin` to the url, `http://localhost:3000/admin`

- **Email Confirmation**: For account functionalities, ensure you have a mailer configured for development, or bypass the confirmation requirement in your development environment. For local development notice that the default behaviour is to log the emails in the development logs.

- **Database Issues**: If you encounter issues with database setup, check that PostgreSQL is running and credentials in `config/database.yml` are correct.

## Seed Data

The product data is seeded using a JSON file containing Yugioh card information. Images are downloaded and attached to products using URLs provided by the ygoprodeck API. Ensure you have an internet connection for the seed script to function correctly.

## Contact

Your Name - mcastrocortes@rrc.ca

Project Link: `https://github.com/neo-miguel-castro/e-commerce-webd`
