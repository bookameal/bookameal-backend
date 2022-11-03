
# Book-a-Meal

Book-A-Meal is an application that allows customers to 
make food orders and helps the food vendor 
know what the customers want to eat. 

## Run Locally

Clone the project

```bash
  git clone git@github.com:bookameal/bookameal-backend.git
```  
```bash
  cd bookameal-backend
```
```bash
  bundle install
```
```bash
  rails db:create
```
```bash
  rails db:migrate db:seed
```
```bash
  rails s
```


## API Reference

#### Get all  /menu-items

```http
  GET /https://bookameal-backend.herokuapp.com/menu_items
```


#### Get menu/:id

```http
  GET /https://bookameal-backend.herokuapp.com/menu_items/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `integer` | **Required**. Id of item to fetch |


#### Get all  /orders

```http
  GET /https://bookameal-backend.herokuapp.com/orders
```


#### Get orders/:id

```http
  GET /https://bookameal-backend.herokuapp.com/orders/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `integer` | **Required**. Id of item to fetch |



## Documentation

[Oficial API Documentation](https://documenter.getpostman.com/view/14609137/2s8YRgpuNY#intro)


## Authors

- [@i-ronoh](https://github.com/i-ronoh)
- [@carlagesa](https://github.com/carlagesa)
- [@VKwamboka](https://github.com/VKwamboka)
- [@Edsey-omenda](https://github.com/Edsey-omenda)
- [@Mary-muriga](https://github.com/Mary-muriga)

## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.

Please adhere to this project's `code of conduct`.


## Tech Stack

**Client:** React, Redux, React-bootstrap

**Server:** Ruby on Rails, PostgreSQL


## Related

Here are some related projects

[Book-a-meal Front-end](https://github.com/bookameal/bookameal-frontend)


## Deployment

This project has been hosted on Heroku and uses PostgreSQL Database
```bash
 git add .
```

```bash
git commit -m 'Initial commit'
```

```bash
heroku create
```
```bash
git push heroku main
```


## Feedback

If you have any feedback, please reach out to us at bookameal@gmail.com

