class DebtTypesController < ApplicationController
  before_action :set_debt_type, only: %i[ show edit update destroy ]

  # GET /debt_types or /debt_types.json
  def index
    @debt_types = DebtType.all
  end

  # GET /debt_types/1 or /debt_types/1.json
  def show
  end

  # GET /debt_types/new
  def new
    @debt_type = DebtType.new
  end

  # GET /debt_types/1/edit
  def edit
  end

  # POST /debt_types or /debt_types.json
  def create
    @debt_type = DebtType.new(debt_type_params)

    respond_to do |format|
      if @debt_type.save
        format.html { redirect_to debt_type_url(@debt_type), notice: "Debt type was successfully created." }
        format.json { render :show, status: :created, location: @debt_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @debt_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debt_types/1 or /debt_types/1.json
  def update
    respond_to do |format|
      if @debt_type.update(debt_type_params)
        format.html { redirect_to debt_type_url(@debt_type), notice: "Debt type was successfully updated." }
        format.json { render :show, status: :ok, location: @debt_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @debt_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debt_types/1 or /debt_types/1.json
  def destroy
    @debt_type.destroy

    respond_to do |format|
      format.html { redirect_to debt_types_url, notice: "Debt type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debt_type
      @debt_type = DebtType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def debt_type_params
      params.require(:debt_type).permit(:uid, :name, :description, :status, :user_id)
    end
end
