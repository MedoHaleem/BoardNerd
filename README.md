# BoardNerd

is sample project used to solidify my experience in Elixir, the project is E-Commrece/Social site the finished project should have the following:

- User can register and login into the site either using our register form or OAuth.
- User can browse game boards, filter through categories and search games
- User would be able to add products to his cart and eventually order it through the site.
- User can create game night and share it with the site users.
- User can chat with other users through the lobby
- Game Nigh will include the address of the game session location, games that will be played, time and duration, chat were users can engage regarding the session and reserve a spot in the session.
- Admin can add new products and categories.
- Admin can check orders.

Project phases:

- [x] means it is done.
- [-] means it is currently in progress.
- [ ] means it is planned but not implmented.

***Phase 1:***

- [x] User should be able to login/register/logout
- [x] User should be able to see products and browse by category
- [ ] User should be able to create game sessions
- [ ] Game sessions must have address, date, time, game type
- [ ] Admin should be able to create/update/delete category
- [ ] Admin should be able to create/update delete products
- [ ] User shouldn't be able to access Admin CRUD operation if not admin


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).
