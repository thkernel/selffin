class IncomeTypesController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"

  before_action :set_income_type, only: %i[ show edit update destroy ]

  # GET /income_types or /income_types.json
  def index
    @income_types = IncomeType.all
  end

  # GET /income_types/1 or /income_types/1.json
  def show
  end

  # GET /income_types/new
  def new
    @income_type = IncomeType.new
  end

  # GET /income_types/1/edit
  def edit
  end

  # POST /income_types or /income_types.json
  def create
    @income_type = current_user.income_types.build(income_type_params)

    respond_to do |format|
      if @income_type.save
        @income_types = IncomeType.all
        format.html { redirect_to income_type_url(@income_type), notice: "Income type was successfully created." }
        format.json { render :show, status: :created, location: @income_type }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @income_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /income_types/1 or /income_types/1.json
  def update
    respond_to do |format|
      if @income_type.update(income_type_params)
        @income_types = IncomeType.all
        format.html { redirect_to income_type_url(@income_type), notice: "Income type was successfully updated." }
        format.json { render :show, status: :ok, location: @income_type }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @income_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
      @income_type = IncomeType.find_by(uid: params[:income_type_id])
    end

  # DELETE /income_types/1 or /income_types/1.json
  def destroy
    @income_type.destroy

    respond_to do |format|
      format.html { redirect_to income_types_url, notice: "Income type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income_type
      @income_type = IncomeType.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def income_type_params
      params.require(:income_type).permit(:name, :description, :status)
    end
end
