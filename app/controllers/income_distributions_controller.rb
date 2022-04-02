class IncomeDistributionsController < ApplicationController
  before_action :set_income_distribution, only: %i[ show edit update destroy ]

  # GET /income_distributions or /income_distributions.json
  def index
    @income_distributions = IncomeDistribution.all
  end

  # GET /income_distributions/1 or /income_distributions/1.json
  def show
  end

  # GET /income_distributions/new
  def new
    @income_distribution = IncomeDistribution.new
  end

  # GET /income_distributions/1/edit
  def edit
  end

  # POST /income_distributions or /income_distributions.json
  def create
    @income_distribution = IncomeDistribution.new(income_distribution_params)

    respond_to do |format|
      if @income_distribution.save
        format.html { redirect_to income_distribution_url(@income_distribution), notice: "Income distribution was successfully created." }
        format.json { render :show, status: :created, location: @income_distribution }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @income_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /income_distributions/1 or /income_distributions/1.json
  def update
    respond_to do |format|
      if @income_distribution.update(income_distribution_params)
        format.html { redirect_to income_distribution_url(@income_distribution), notice: "Income distribution was successfully updated." }
        format.json { render :show, status: :ok, location: @income_distribution }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @income_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_distributions/1 or /income_distributions/1.json
  def destroy
    @income_distribution.destroy

    respond_to do |format|
      format.html { redirect_to income_distributions_url, notice: "Income distribution was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income_distribution
      @income_distribution = IncomeDistribution.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def income_distribution_params
      params.require(:income_distribution).permit(:uid, :saving_percentage, :expense_percentage, :status, :user_id)
    end
end
