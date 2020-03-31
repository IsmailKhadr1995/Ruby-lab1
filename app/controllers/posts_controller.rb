class PostsController < ApplicationController
  def index
  @posts=Post.order(updated_at: :desc)
  
  end

  def show
  end

  def new
    @post=Post.new
  end

  def create
    
    # @post=Post.create(post_params)
   @post= User.find(2).posts.create(post_params)
   
      # @post= Post.new 
      # @post.title=params[:title]
      # @post.content=params[:content]
      # @post.save
      if @post.id 
       redirect_to posts_path
      else 
        render :new
      end

    # redirect_to action : :index ,controller : : users
  end

  def update
    @post=Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  def edit
     @post=Post.find(params[:id])
  end

  def destroy
      @post=Post.find(params[:id])
      @post.destroy()
      # redirect_to action: :index
      redirect_to posts_path

  end
private 
  def post_params
    params.require(:post).permit(:title, :content)
  end  


end
