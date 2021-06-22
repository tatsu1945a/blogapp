class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    # binding.pry
    #raise StanderdError
    @articles = Article.all
  end

  def show
    # binding.pry
    # @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article), notice: 'ほぞんできた'
    else
      flash.now[:error] = '保存だめ'
      render :new
    end
  end

  def edit
    # @article = Article.find(params[:id])
  end

  def update
    # @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article), notice: '更新できた'
    else
      flash.now[:error] = '更新NG'
      render :edit
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy!
    redirect_to root_path, notice: '削除成功しました'
  end

  #プライベートここから
  # 日本語
  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
