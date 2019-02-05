class Backoffice::ArticlesController < ApplicationController
  before_action :set_backoffice_article, only: [:show, :edit, :update, :destroy]
  layout 'backoffice'
  # GET /backoffice/articles
  # GET /backoffice/articles.json
  def index
    @backoffice_articles = Backoffice::Article.all
  end

  # GET /backoffice/articles/1
  # GET /backoffice/articles/1.json
  def show
  end

  # GET /backoffice/articles/new
  def new
    @backoffice_article = Backoffice::Article.new
  end

  # GET /backoffice/articles/1/edit
  def edit
  end

  # POST /backoffice/articles
  # POST /backoffice/articles.json
  def create
    @backoffice_article = Backoffice::Article.new(backoffice_article_params)

    respond_to do |format|
      if @backoffice_article.save
        format.html { redirect_to @backoffice_article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @backoffice_article }
      else
        format.html { render :new }
        format.json { render json: @backoffice_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backoffice/articles/1
  # PATCH/PUT /backoffice/articles/1.json
  def update
    respond_to do |format|
      if @backoffice_article.update(backoffice_article_params)
        format.html { redirect_to @backoffice_article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @backoffice_article }
      else
        format.html { render :edit }
        format.json { render json: @backoffice_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backoffice/articles/1
  # DELETE /backoffice/articles/1.json
  def destroy
    @backoffice_article.destroy
    respond_to do |format|
      format.html { redirect_to backoffice_articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backoffice_article
      @backoffice_article = Backoffice::Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backoffice_article_params
      params.require(:backoffice_article).permit(:title, :body, :published_at, :author_id)
    end
end
