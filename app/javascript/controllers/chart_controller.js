import Chart from "stimulus-chartjs"

export default class extends Chart {
  connect (){
    super.connect()
    setInterval(() => {
      this.chart.resize()
    }, 400);
  }
}
