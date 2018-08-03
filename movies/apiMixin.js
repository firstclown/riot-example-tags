const apiMixin = {
    init: (opts) => {
        this.selectMovie = (event) => {
            event.preventDefault();
            fetch('http://www.omdbapi.com/?apikey=e78b4fa0&i=' + event.item.imdbID, {
                method: 'GET',
            }).then(function(response) {
                response.json().then( function(movieResult) {
                    opts.bus.trigger('showMovie', movieResult);
                });
                // Send a message with results
            }).catch(function(reason) {
                console.log(reason);
            });
        };
    }
}

riot.mixin('apiMixin', apiMixin);