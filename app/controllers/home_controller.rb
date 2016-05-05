class HomeController < ApplicationController
  def index
    @posts=Post.all
  end
  def write
    new_post=Post.new
    new_post.title=params[:title]
    new_post.content=params[:content]
    new_post.save
    
    redirect_to :back
  end
  def reply_write
    new_reple=Reply.new
    new_reple.post_id=params[:post_id]
    new_reple.content=params[:content]
    new_reple.save
    
    redirect_to :back
  end
end
