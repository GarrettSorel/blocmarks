class LikesController < ApplicationController
  def index
  end
  
  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.build(bookmark: @bookmark)

    if like.save
      redirect_to (:back)
    else
      redirect_to (:back)
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.find(params[:id])
 
    if like.destroy
      flash[:alert] = "Like removed!"
      return redirect_to (:back)
    else
      flash[:alert] = "Unable to remove like. Try again."
      return redirect_to (:back)
    end
  end
end
