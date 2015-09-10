class SongsController < ApplicationController
  before_action :load_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    Song.create(song_params)
    redirect_to songs_path
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to songs_path
    else
      render :edit
    end
  end

  def destroy
    @song.delete
    redirect_to songs_path
  end

  private

    def song_params
      params.require(:song).permit(:title, :artist)
    end

    def load_song
      @song = Song.find_by(slug: params[:slug])
    end
end
