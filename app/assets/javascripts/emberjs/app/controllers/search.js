import Ember from 'ember';

export default Ember.Controller.extend({
    actions: {
        submitForm() {
            let query = Ember.$('[name=query]').val();
            Ember.$.getJSON(`http://localhost:3000/execute-search?query=${query}`, {})
                .then(result => {
                   this.set('stocks', result);
                });
        }
    }
});
