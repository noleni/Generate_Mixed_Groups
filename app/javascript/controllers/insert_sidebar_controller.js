import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-sidebar"
export default class extends Controller {
  static targets = [ "sidebar", "title", "caracters" ]

  connect() {
    this.sidebarTarget.classList.add('sidebar');
    this.caractersTarget.classList.add('caracters-list');
    this.titleTarget.classList.add('title');
  }

  disconnect() {
    this.sidebarTarget.classList.remove('sidebar');
    this.caractersTarget.classList.remove('caracters-list');
    this.titleTarget.classList.remove('title');
  }
}
