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

        self.mixin('apiMixin');
    </script>

</movie-favorites>