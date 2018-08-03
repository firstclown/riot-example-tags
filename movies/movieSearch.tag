<movie-search>
<!-- Structure / HTML -->

    <form class="form-inline" onsubmit="{doSearch}">
        <div class="form-group">
        <input ref="search" class="form-control" type="text" name="search" placeholder="Enter Search Term"/>
        <input class="form-control" type="submit" name="Search"/>
        </div>
    </form>

<!-- Look and Feel / CSS -->
    <style>

    </style>

<!-- Behavior / JavaScript -->
    <script>
        this.doSearch = (e) => {
            e.preventDefault();
            
            let search = this.refs.search.value;
            fetch('http://www.omdbapi.com/?apikey=e78b4fa0&s=' + search, {
                method: 'GET',
            }).then(function(response) {
                response.json().then( function(searchResults) {
                    // Send a message with results
                    opts.bus.trigger('newMovieList', searchResults.Search);
                });

            }).catch(function(reason) {
                console.log(reason);
            });

        }

    </script>

</movie-search>