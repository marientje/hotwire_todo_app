import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["counter"]
  static values = { max: Number }

  connect() {
    this.counterTarget.textContent = this.maxValue
  }

  update(event) {
    const inputLength = event.target.value.length
    const remaining = this.maxValue - inputLength

    this.counterTarget.textContent = remaining
    this.counterTarget.style.color = remaining < 0 ? "red" : "black"
  }
}