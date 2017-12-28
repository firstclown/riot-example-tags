<movie-list>
    <!-- HTML Structure -->
    <table class="table">
        <tr each="{movies}" onclick="{selectMovie}">
            <th>{Title}</th>
            <td>{Year}</td>
        </tr>
    </table>

    <!-- CSS style -->
    <style>
    tr {
        cursor: pointer;
    }
    </style>

    <!-- JavaScript behavior -->
    <script>
        const self = this;
        self.movies = [];

        opts.bus.on('newMovieList', function(newList) {
            self.movies = newList;
            self.update();
        });

        self.mixin('apiMixin');
    </script>
</movie-list>