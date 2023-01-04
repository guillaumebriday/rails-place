// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener('turbo:submit-start', event => {
  // Adding color param to POST request when updating a block.
  event.detail.formSubmission.location.searchParams.set('color', sessionStorage.getItem('color'))
})
