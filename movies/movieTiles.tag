<movie-tiles>
    <!-- HTML Structure -->
    <div class="movie-listing well" each="{movies}">
        <a href="#" onclick="{selectMovie}"><h3 class="title">{Title}</h3></a>
        <h4 class="year">({Year})</h4>
        <img src="{Poster}"/>

    </div>
    <!-- CSS Style -->
    <style>
        :scope {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        
        .movie-listing {
            display: inline-block;
            text-align: center;
            width: 300px;
        }

        .movie-listing img {
            width: 150px;
            display: block;
            margin:auto;
        }

        .title {
            display: inline;
            font-weight: bold;
            font-size: 2em;
        }

        .year {
            display: inline;
            color: lightgrey;
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


</movie-tiles>