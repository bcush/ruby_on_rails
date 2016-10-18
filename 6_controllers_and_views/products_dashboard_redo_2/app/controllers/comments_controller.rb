class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    comment = Comment.new(comment: params[:comment], product: Product.find(params[:id]))
    if comment.save
      flash[:message] = "Comment saved!"
    else
      flash[:message] = "Comment not saved."
    end
    redirect_to :back
  end
end
