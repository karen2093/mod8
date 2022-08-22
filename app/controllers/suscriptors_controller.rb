class SuscriptorsController < ApplicationController
  before_action :set_suscriptor, only: %i[ show edit update destroy ]

  # GET /suscriptors or /suscriptors.json
  def index
    @suscriptors = Suscriptor.all
  end

  # GET /suscriptors/1 or /suscriptors/1.json
  def show
  end

  # GET /suscriptors/new
  def new
    @suscriptor = Suscriptor.new
  end

  # GET /suscriptors/1/edit
  def edit
  end

  # POST /suscriptors or /suscriptors.json
  def create
    @suscriptor = Suscriptor.new(suscriptor_params)

    respond_to do |format|
      if @suscriptor.save
        format.html { redirect_to suscriptor_url(@suscriptor), notice: "Suscriptor was successfully created." }
        format.json { render :show, status: :created, location: @suscriptor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @suscriptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suscriptors/1 or /suscriptors/1.json
  def update
    respond_to do |format|
      if @suscriptor.update(suscriptor_params)
        format.html { redirect_to suscriptor_url(@suscriptor), notice: "Suscriptor was successfully updated." }
        format.json { render :show, status: :ok, location: @suscriptor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @suscriptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suscriptors/1 or /suscriptors/1.json
  def destroy
    @suscriptor.destroy

    respond_to do |format|
      format.html { redirect_to suscriptors_url, notice: "Suscriptor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suscriptor
      @suscriptor = Suscriptor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def suscriptor_params
      params.require(:suscriptor).permit(:nombre, :apellido, :correo, :telefono, :twitter)
    end
end
