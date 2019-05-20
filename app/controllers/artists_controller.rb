class ArtistsController < ApplicationController
 
before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
  end

  def show
  end

  def edit
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = @song.artists.new(artist_params)
    if @artist.save
      redirect_to billboard_song_path(@song.billboard_id, @song)
    else
      render :new
    end
  end

  def update
    if @artist.update(artist_params)
      redirect_to artists_path
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to artist_path
  end
  private
  
    def set_song
    @song = Song.find(params[:song_id])
  end
  def artist_params
    params.require(:artist).permit(:name)
  end
end
