id <- "01eec0e3ffe34b4994f2562bc2d6f437"
secret <- "2b5a0f3a385d4725964753931c89fd8a"
Sys.setenv(SPOTIFY_CLIENT_ID = id)
Sys.setenv(SPOTIFY_CLIENT_SECRET = secret)
access_token <- get_spotify_access_token()

my_id <- 'your spotify id'
my_plists <- get_user_playlists(my_id)

my_plists2 <- my_plists %>%
  filter(playlist_name %in% c('Taiwan Top 50', 'France Top 50', 'Bolivia Top 50', 'U.S. Top 50'))

tracks <- get_playlist_tracks(my_plists2)
features <- get_track_audio_features(tracks)


