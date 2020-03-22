class FavoritesController < ApplicationController
  def create
    @post_image = PostImage.find(params[:post_image_id])
    favorite = @post_image.favorites.new(user_id: current_user.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
    @post_image =  PostImage.find(params[:post_image_id])
    favorite = current_user.favorites.find_by(post_image_id: @post_image.id)
    favorite.destroy
    redirect_to request.referer
  end

  private
  def redirect
    case params[:redirect_id].to_i
    when 0
      redirect_to post_images_path
    when 1
      redirect_to post_image_path(@post_image)
    end
   end
end
