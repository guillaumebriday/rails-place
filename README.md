# <img src="app/assets/images/logo.svg" width="24" height="24" alt="r/place logo"> r/place on Rails

[r/place](https://www.reddit.com/r/place/) clone built with [Rails](https://rubyonrails.org/) and [Hotwire](https://hotwired.dev/).

## Purpose

This project is a Proof of Concept (PoC).

It requires almost no JavaScript at all, as you can see in the `app/assets/javascript` folder, thanks to Hotwire.

## Demo

👉 https://rails-place.guillaumebriday.fr

## Limitations and Improvements

- It does not scale on the frontend because of the number of DOM elements.
- We should not use DIVs to create the tiles, it does not make sense.
- We should save the grid into a database, not only in Redis.
- We should add cooldown timer in the UI, not only a 422 error response.

## Contributing

Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.

## License

This project is released under the [MIT](http://opensource.org/licenses/MIT) license.
