import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { conversationId: Number }
  static targets = ['input', 'messages']

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ConversationChannel", id: this.conversationIdValue },
      { received: data => {
        console.log(data)
        console.log(this.inputTarget.value)
        this.inputTarget.value = ""
        this.messagesTarget.insertAdjacentHTML("beforeend", data)
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
