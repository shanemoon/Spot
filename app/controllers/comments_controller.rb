class CommentsController < ApplicationController

    def create
      @painting = Painting.find(params[:painting_id])
      @comment = @painting.comments.create(params[:comment])
      redirect_to painting_path(@painting)
    end

    def destroy
      @painting = Painting.find(params[:painting_id])
      @comment = @painting.comments.find(params[:id])
      @comment.destroy
      redirect_to painting_path(@painting)
    end

end
