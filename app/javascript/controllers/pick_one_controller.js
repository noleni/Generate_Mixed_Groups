import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pick-one"
export default class extends Controller {
  static targets = [ "result", "form" ]

  connect() {
    console.log(this.resultTarget)
  }

  displayForm() {
    this.formTarget.classList.remove('d-none');
    this.buttonTarget.classList.add('d-none');
  }
}
