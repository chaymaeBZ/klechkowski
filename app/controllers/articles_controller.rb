class ArticlesController < ApplicationController
	before_action :admin_user, except: [ :show ]
  def new
  	@article = Article.new
  end

	def create
		@article = Article.new(article_params)
		if @article.save
			flash[:success] = t :article_published
			redirect_to root_url
		else
			render 'new'
		end
	end

  def show
  	@article = Article.find(params[:id])
  end

  def index
    redirect_to new_article_path
  end

  def destroy
    Article.find(params[:id]).destroy
    flash[:success] = t :article_deleted
    redirect_to root_url
  end

  private

  def article_params
  	params.require(:article).permit(:title, :content, :picture)
  end
end
