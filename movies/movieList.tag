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
        this.movies = [];

        opts.bus.on('newMovieList', (newList) => {
            this.movies = newList;
            this.update();
        });

        this.mixin('apiMixin');
    </script>
</movie-list>