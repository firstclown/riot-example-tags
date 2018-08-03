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
        this.movies = opts.movies;

        this.mixin('apiMixin');
    </script>

</movie-favorites>