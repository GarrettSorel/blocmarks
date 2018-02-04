class LikesController < ApplicationController
  def index
  end
  
  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.build(bookmark: @bookmark)
 
    if like.save
      flash[:alert] = "Bookmark liked successfully!"
      return redirect_to @bookmark
    else
      flash[:alert] = "Unable to like bookmark. Try again."
    return redirect_to @bookmark  
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = Like.find(params[:id])
 
    if like.destroy
      flash[:alert] = "Like removed!"
      return redirect_to @bookmark
    else
      flash[:alert] = "Unable to remove like. Try again."
      return redirect_to @bookmark
    end
  end
end
