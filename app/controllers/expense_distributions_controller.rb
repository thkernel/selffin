class ExpenseDistributionsController < ApplicationController
  before_action :set_expense_distribution, only: %i[ show edit update destroy ]

  # GET /expense_distributions or /expense_distributions.json
  def index
    @expense_distributions = ExpenseDistribution.all
  end

  # GET /expense_distributions/1 or /expense_distributions/1.json
  def show
  end

  # GET /expense_distributions/new
  def new
    @expense_distribution = ExpenseDistribution.new
  end

  # GET /expense_distributions/1/edit
  def edit
  end

  # POST /expense_distributions or /expense_distributions.json
  def create
    @expense_distribution = ExpenseDistribution.new(expense_distribution_params)

    respond_to do |format|
      if @expense_distribution.save
        format.html { redirect_to expense_distribution_url(@expense_distribution), notice: "Expense distribution was successfully created." }
        format.json { render :show, status: :created, location: @expense_distribution }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @expense_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expense_distributions/1 or /expense_distributions/1.json
  def update
    respond_to do |format|
      if @expense_distribution.update(expense_distribution_params)
        format.html { redirect_to expense_distribution_url(@expense_distribution), notice: "Expense distribution was successfully updated." }
        format.json { render :show, status: :ok, location: @expense_distribution }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @expense_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_distributions/1 or /expense_distributions/1.json
  def destroy
    @expense_distribution.destroy

    respond_to do |format|
      format.html { redirect_to expense_distributions_url, notice: "Expense distribution was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_distribution
      @expense_distribution = ExpenseDistribution.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expense_distribution_params
      params.require(:expense_distribution).permit(:uid, :expense_category_id, :percentage, :status, :user_id)
    end
end
