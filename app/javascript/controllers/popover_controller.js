import { Controller } from "@hotwired/stimulus"
import Popover from 'stimulus-popover'

export default class extends Popover {
  connect() {
    console.log('yes')
  }

  show(event){
    if (this.hasCardTarget) {
      this.cardTarget.classList.remove('hidden')
      return;
    }else{
      return super.show(event);
    }
  }

  hide (){
    if (this.hasCardTarget) {
      this.cardTarget.classList.add('hidden')
    }
  }
}
