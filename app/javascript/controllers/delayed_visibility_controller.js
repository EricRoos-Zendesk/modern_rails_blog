import { Controller } from "@hotwired/stimulus";
import { useIntersection } from 'stimulus-use'

export default class extends Controller {
  static targets = [ 'frame'];
  options = {
    threshold: 0, // default
  }

  connect() {
    useIntersection(this, this.options)
  }

  appear(entry) {
    console.log('appear %o', this.element);
    this.element.classList.remove('invisible')
    if(this.hasFrameTarget){
      this.frameTarget.classList.remove('hidden')
    }
  }

  disappear(entry) {
  }
}
