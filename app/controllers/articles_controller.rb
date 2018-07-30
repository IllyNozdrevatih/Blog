# -*- encoding : utf-8 -*-
class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :find_article , only: [:edit, :update ,:show ,:destroy]

  def index
    @articles = Article.order(updated_at: :desc).page(params[:page]).per_page(4).includes(:user)
  end
  def show
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new
    current_user.article.create(article_params)
    if current_user.article
      redirect_to articles_path
    else
      render :new
    end
  end
  def edit

  end
  def update
    if @article.update(article_params)
      redirect_to articles_path ,success:'Новость успешно обновлена'
    else
      render :edit
    end
  end
  def destroy
    if @article.destroy
      redirect_to articles_path ,success:'Новость успешно удалина'
    end
  end
  private
  def article_params
    params[:article].permit(:name ,:description,:image)
  end
  def find_article
    @article = Article.find(params[:id])
  end
end