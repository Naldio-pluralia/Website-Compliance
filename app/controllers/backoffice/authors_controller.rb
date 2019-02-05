class Backoffice::AuthorsController < ApplicationController
  before_action :set_backoffice_author, only: [:show, :edit, :update, :destroy]
  layout 'backoffice'
  # GET /backoffice/authors
  # GET /backoffice/authors.json
  def index
    @backoffice_authors = Backoffice::Author.all
  end

  # GET /backoffice/authors/1
  # GET /backoffice/authors/1.json
  def show
  end

  # GET /backoffice/authors/new
  def new
    @backoffice_author = Backoffice::Author.new
  end

  # GET /backoffice/authors/1/edit
  def edit
  end

  # POST /backoffice/authors
  # POST /backoffice/authors.json
  def create
    @backoffice_author = Backoffice::Author.new(backoffice_author_params)

    respond_to do |format|
      if @backoffice_author.save
        format.html { redirect_to @backoffice_author, notice: 'Author was successfully created.' }
        format.json { render :show, status: :created, location: @backoffice_author }
      else
        format.html { render :new }
        format.json { render json: @backoffice_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backoffice/authors/1
  # PATCH/PUT /backoffice/authors/1.json
  def update
    respond_to do |format|
      if @backoffice_author.update(backoffice_author_params)
        format.html { redirect_to @backoffice_author, notice: 'Author was successfully updated.' }
        format.json { render :show, status: :ok, location: @backoffice_author }
      else
        format.html { render :edit }
        format.json { render json: @backoffice_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backoffice/authors/1
  # DELETE /backoffice/authors/1.json
  def destroy
    @backoffice_author.destroy
    respond_to do |format|
      format.html { redirect_to backoffice_authors_url, notice: 'Author was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backoffice_author
      @backoffice_author = Backoffice::Author.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backoffice_author_params
      params.require(:backoffice_author).permit(:name, :date_of_birth, :description)
    end
end
