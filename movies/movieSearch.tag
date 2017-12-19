<movie-search>
<!-- Structure / HTML -->

    <form class="form-inline" onsubmit="{doSearch}">
        <div class="form-group">
        <input class="form-control" type="text" name="search" placeholder="Enter Search Term"/>
        <input class="form-control" type="submit" name="Search"/>
        </div>
    </form>

<!-- Look and Feel / CSS -->
    <style>

    </style>

<!-- Behavior / JavaScript -->
    <script>
        const self = this;

        self.doSearch = function(e) {
            e.preventDefault();
            e.stopPropagation();
            fetch('http://www.omdbapi.com/?apikey=e78b4fa0&s=' + self.root.querySelector('input[name=search]').value, {
                method: 'GET',
            }).then(function(response) {
                response.json().then( function(searchResults) {
                    opts.bus.trigger('newMovieList', searchResults.Search);
                });
                // Send a message with results
            }).catch(function(reason) {
                console.log(reason);
            });

            return false;
        }

    </script>

</movie-search>