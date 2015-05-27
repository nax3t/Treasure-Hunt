class CommentsController < ApplicationController
	def create
    @treasure = Treasure.find(params[:treasure_id])
    @comment = @treasure.comments.create(comment_params)
    redirect_to treasure_path(@treasure)
	end

	def destroy
    @treasure = Treasure.find(params[:treasure_id])
    @comment = @treasure.comments.find(params[:id])
    @comment.destroy
    redirect_to treasure_path(@treasure)
  end

  private
    def comment_params
      params.require(:comment).permit(:bru, :comment)
    end
end
