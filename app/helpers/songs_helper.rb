module SongsHelper
  def add_new_song_field(artist)
    if artist
      link_to "Add New Song", new_artist_song_path(artist)
    else
      link_to "Add New Song", new_song_path
    end
  end

  def artist_id_field(song)
    if song.artist.nil? 
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", song.artist_id
    end
  end
end
