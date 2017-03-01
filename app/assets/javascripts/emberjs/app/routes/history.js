import Ember from 'ember';

export default Ember.Route.extend({
    setupController: function(controller, model){
        controller.set('chartOptions', {
            title: {text: 'Text'},
            scales: {
                xAxes: [{
                    type: 'time',
                    position: 'bottom'
                }],
                yAxes: [{
                    ticks: {
                        callback: function(value) {
                            return '$' + value;
                        }
                    }
                }]
            },
            tooltips: {
                callbacks: {
                    title: function(tooltipItem){
                        return tooltipItem[0].xLabel.toLocaleDateString("en-us");
                    },
                    label: function(tooltipItem){
                        return 'Price: $' + tooltipItem.yLabel.toFixed(2);
                    }
                }
            }
        });

        controller.set('data', model.data);
        controller.set('symbol', model.symbol);
    },

    model(params){
       return Ember.$.getJSON(`http://localhost:3000/history?symbol=${params.symbol}`).then(json => {
            let fixed_data = json.map(day => {
                return {x: new Date(day.date), y: day.price};
            });

            return {
                data: {
                    datasets: [{
                        label: 'Price',
                        fill: false,
                        lineTension: 0,
                        borderColor: "#6435c9",
                        pointRadius: 5,
                        pointHoverRadius: 10,
                        data: fixed_data
                    }]
                },
                symbol: params.symbol
            };
       });
    }
});
