import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "caracter", "form" ]

  connect() {
    console.log(this.caracterTarget);
    console.log(this.formTarget);

  }

  displayForm() {
    this.formTarget.classList.remove('d-none');
  }
}
