class ArticlesController < ApplicationController
  before_filter :logged_in?, except: [:index, :show]
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by_id(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to "/articles/#{@article.id}"
    else
      redirect_to new_article_path
    end
  end

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def update
    p 'YOU HAVE ENTERED UPDATEEEEEEEEE'
    p article_params
    @article = @article.update(article_params)
    if @article.update
      redirect_to "/articles/#{@article.id}"
    else
      redirect_to "/articles"
    end 
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
