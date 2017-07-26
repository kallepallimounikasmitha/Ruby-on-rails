class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end


  def show
    @articles = Article.find(params[:id])
  end


  def new
  end

  def create
  @articles = Article.new(article_params)
  @articles.save
  redirect_to @articles
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
