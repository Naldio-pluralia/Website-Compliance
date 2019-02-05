class Backoffice::CompliancesController < ApplicationController
  before_action :set_backoffice_compliance, only: [:show, :edit, :update, :destroy]

  layout 'backoffice'

  # GET /backoffice/compliances
  # GET /backoffice/compliances.json
  def index
    @backoffice_compliances = Backoffice::Compliance.all
  end

  # GET /backoffice/compliances/1
  # GET /backoffice/compliances/1.json
  def show
  end

  # GET /backoffice/compliances/new
  def new
    @backoffice_compliance = Backoffice::Compliance.new
  end

  # GET /backoffice/compliances/1/edit
  def edit
  end

  # POST /backoffice/compliances
  # POST /backoffice/compliances.json
  def create
    @backoffice_compliance = Backoffice::Compliance.new(backoffice_compliance_params)

    respond_to do |format|
      if @backoffice_compliance.save
        format.html { redirect_to @backoffice_compliance, notice: 'Compliance was successfully created.' }
        format.json { render :show, status: :created, location: @backoffice_compliance }
      else
        format.html { render :new }
        format.json { render json: @backoffice_compliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backoffice/compliances/1
  # PATCH/PUT /backoffice/compliances/1.json
  def update
    respond_to do |format|
      if @backoffice_compliance.update(backoffice_compliance_params)
        format.html { redirect_to @backoffice_compliance, notice: 'Compliance was successfully updated.' }
        format.json { render :show, status: :ok, location: @backoffice_compliance }
      else
        format.html { render :edit }
        format.json { render json: @backoffice_compliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backoffice/compliances/1
  # DELETE /backoffice/compliances/1.json
  def destroy
    @backoffice_compliance.destroy
    respond_to do |format|
      format.html { redirect_to backoffice_compliances_url, notice: 'Compliance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backoffice_compliance
      @backoffice_compliance = Backoffice::Compliance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backoffice_compliance_params
      params.require(:backoffice_compliance).permit(:title, :body, :published_at)
    end
end
