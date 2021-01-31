class EmpdataController < ApplicationController
  before_action :set_empdatum, only: %i[ show edit update destroy ]

  # GET /empdata or /empdata.json
  def index
    @empdata = Empdatum.all
  end

  # GET /empdata/1 or /empdata/1.json
  def show
  end

  # GET /empdata/new
  def new
    @empdatum = Empdatum.new
  end

  # GET /empdata/1/edit
  def edit
  end

  # POST /empdata or /empdata.json
  def create
    @empdatum = Empdatum.new(empdatum_params)

    respond_to do |format|
      if @empdatum.save
        format.html { redirect_to @empdatum, notice: "Empdatum was successfully created." }
        format.json { render :show, status: :created, location: @empdatum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @empdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empdata/1 or /empdata/1.json
  def update
    respond_to do |format|
      if @empdatum.update(empdatum_params)
        format.html { redirect_to @empdatum, notice: "Empdatum was successfully updated." }
        format.json { render :show, status: :ok, location: @empdatum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @empdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empdata/1 or /empdata/1.json
  def destroy
    @empdatum.destroy
    respond_to do |format|
      format.html { redirect_to empdata_url, notice: "Empdatum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empdatum
      @empdatum = Empdatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def empdatum_params
      params.require(:empdatum).permit(:name, :age, :gender, :designation)
    end
end
