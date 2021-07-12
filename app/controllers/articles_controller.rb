class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article.id)
  end

  def index
    @articles = Article.page(params[:page]).per(10)
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit( :game_name, :machine, :image, :review ).merge(user_id: current_user.id)
  end

end
