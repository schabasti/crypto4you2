import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { conversationId: Number }
  static targets = ["noMessages"]

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ConversationChannel", id: this.conversationIdValue },
      { received: data => {
          console.log(data)
          this.noMessagesTarget.classList.add("d-none")
          this.element.insertAdjacentHTML("beforeend", data)
        }
      }
    )
    console.log(`Subscribed to the conversation with the id ${this.conversationIdValue}.`);
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
