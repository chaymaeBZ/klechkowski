class StaticPagesController < ApplicationController
  def index
    @permis = true
    @articles = Article.paginate(page: params[:page], per_page: 4)
  end

  def contactUs
  end

  def FAQ
  end

  def help
  end

  def about
  end
end
