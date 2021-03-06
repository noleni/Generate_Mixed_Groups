import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-caracter"
export default class extends Controller {
  static targets = [ "caracter", "form", "button" ]

  connect() {

  }

  displayForm() {
    this.formTarget.classList.remove('d-none');
    this.buttonTarget.classList.add('d-none');
  }
}
