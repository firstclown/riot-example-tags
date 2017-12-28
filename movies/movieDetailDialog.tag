<movie-detail>
<!-- HTML Structure -->
    <div id="movie-modal" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">{movie.Title}</h4>
            </div>
            <div class="modal-body">
            <div>
                <img class="center-block" src="{movie.Poster}"/>
            </div>
              <p>{movie.Title} was released on {movie.Released}. It is rated {movie.Rated} and runs for {movie.Runtime}.</p>
              <p>{movie.Plot}</p>
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
<!-- CSS Style -->

    <style>
        p {
            margin-top: 20px;
        }
    </style>

<!-- JavaScript behavior -->
    <script>
        const self = this;
        self.movie = {};

        opts.bus.on('showMovie', function(movie) {
            self.movie = movie;
            self.update();
            $(self.root).find('#movie-modal').modal();
        });
    </script>

</movie-detail>