<movie-search>
<!-- Structure / HTML -->

    <form onsubmit="{doSearch}">
        <input type="text" name="search" placeholder="Enter Search Term"/>
        <input type="submit" name="Search"/>
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
            fetch('https://www.omdbapi.com/?apikey=e78b4fa0&s=' + self.root.querySelector('input[name=search]').value, {
                method: 'GET',
            }).then(function(response) {
                response.json().then( function(searchResults) {
                    console.log(searchResults);
                });
                // Send a message with results
            }).catch(function(reason) {
                console.log(reason);
            });

            return false;
        }

    </script>

</movie-search>