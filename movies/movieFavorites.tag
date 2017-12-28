<movie-favorites>
    <!-- HTML Structure -->
    <ul class="list-inline">
        <li each="{movies}" onclick="{selectMovie}">{Title}</li>
    </ul>

    <!-- CSS style -->
    <style>

    </style>

    <!-- JavaScript behavior -->
    <script>
        const self = this;
        self.movies = opts.movies;

        self.selectMovie = function(event) {
            event.preventDefault();
            console.log(event.item);
            fetch('http://www.omdbapi.com/?apikey=e78b4fa0&i=' + event.item.imdbID, {
                method: 'GET',
            }).then(function(response) {
                response.json().then( function(movieResult) {
                    console.log(movieResult);
                    opts.bus.trigger('showMovie', movieResult);
                });
                // Send a message with results
            }).catch(function(reason) {
                console.log(reason);
            });
        }
    </script>

</movie-favorites>