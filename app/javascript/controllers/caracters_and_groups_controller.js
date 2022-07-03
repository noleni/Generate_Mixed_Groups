import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="caracters-and-groups"
export default class extends Controller {
  static targets = ["caracterslist", "result", "form"]

  connect() {
    console.log(this.element)
    console.log("caracters list")
    console.log(this.caracterslistTarget)
    console.log("result")
    console.log(this.resultTarget)
  }

  send(event) {
    event.preventDefault()

    console.log("TODO: send request in AJAX")
  }
}
