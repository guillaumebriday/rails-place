import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['button']

  update (e) {
    this.buttonTargets.forEach(button => button.classList.remove('ring'))
    e.target.classList.add('ring')

    // Saving selected color to session Storage.
    sessionStorage.setItem('color', e.params.name)
  }
}
