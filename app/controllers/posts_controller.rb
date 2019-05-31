class PostsController < ApplicationController
  def index
    @posts = Post.all.order("id DESC")
  end

  def manage
    @posts = Post.all.order("id DESC")
  end

  def new
    Post.create({ title: params[:title], body: params[:body] }) if params[:title].present? && params[:body].present?
    redirect_to :action => "manage"
  end

  def delete
    Post.find(params['post_id']).delete if(params['post_id'])
    redirect_to :action => 'manage'
  end
end
