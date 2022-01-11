class AlbumsController < ApplicationController
  def index
    @albums = Album.where(["name LIKE ?","%#{params[:search]}%"])  #this index line is woking by index all record and searching by name.
  end

  

  def show
     @album = Album.find(params[:id]) #  def show are basically use in show the index record and view.
  end
  
  def new
    @album = Album.new    # def are making new record  and def create the new record insert the table.
  end

  def create
    @album =Album.new(album_params)

    if @album.save
       redirect_to @album
    else
      render :new
    end
  end

  def edit 
    @album = Album.find(params[:id]) # def edit will index record is edit by the id and any information will be change.
  end

  def update
    @album = Album.find(params[:id])   # def update will update new user record.
  
    if @album.update(album_params)
      redirect_to @album
    else
      render :edit
    end
  end
  def destroy
    @album = Album.find(params[:id])   # def delete is the destroy table
    @album.destroy

    redirect_to root_path 
  end

  private
    def album_params
      params.require(:album).permit(:name, :description, :avatar, images:[]).merge(user_id: current_user.id)
       #many image upload using by :images []
    end
  
end

