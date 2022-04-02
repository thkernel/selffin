class IncomeSavingsController < ApplicationController
  before_action :set_income_saving, only: %i[ show edit update destroy ]

  # GET /income_savings or /income_savings.json
  def index
    @income_savings = IncomeSaving.all
  end

  # GET /income_savings/1 or /income_savings/1.json
  def show
  end

  # GET /income_savings/new
  def new
    @income_saving = IncomeSaving.new
  end

  # GET /income_savings/1/edit
  def edit
  end

  # POST /income_savings or /income_savings.json
  def create
    @income_saving = IncomeSaving.new(income_saving_params)

    respond_to do |format|
      if @income_saving.save
        format.html { redirect_to income_saving_url(@income_saving), notice: "Income saving was successfully created." }
        format.json { render :show, status: :created, location: @income_saving }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @income_saving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /income_savings/1 or /income_savings/1.json
  def update
    respond_to do |format|
      if @income_saving.update(income_saving_params)
        format.html { redirect_to income_saving_url(@income_saving), notice: "Income saving was successfully updated." }
        format.json { render :show, status: :ok, location: @income_saving }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @income_saving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_savings/1 or /income_savings/1.json
  def destroy
    @income_saving.destroy

    respond_to do |format|
      format.html { redirect_to income_savings_url, notice: "Income saving was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income_saving
      @income_saving = IncomeSaving.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def income_saving_params
      params.require(:income_saving).permit(:uid, :income_id, :status, :user_id)
    end
end
