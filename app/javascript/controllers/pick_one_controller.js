import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pick-one"
export default class extends Controller {
  static targets = [ "btnpick", "result" ]

  connect() {
    console.log(this.btnpickTarget)
    console.log(this.resultTarget)
  }
}
