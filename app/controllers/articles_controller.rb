class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new; end

  def create
    @article = Article.new(article_data)
    # @article.title = params[:title]
    # @article.lyrics = params[:lyrics]
    if @article.save
      redirect_to bubbly_path
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_data)
      redirect_to bubbly_path
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to bubbly_path
    else
      render :index
    end
  end

  private

  def article_data
    params.require(:article).permit(:title, :lyrics)
  end
end
