class IncomeExpensesController < ApplicationController
  before_action :set_income_expense, only: %i[ show edit update destroy ]

  # GET /income_expenses or /income_expenses.json
  def index
    @income_expenses = IncomeExpense.all
  end

  # GET /income_expenses/1 or /income_expenses/1.json
  def show
  end

  # GET /income_expenses/new
  def new
    @income_expense = IncomeExpense.new
  end

  # GET /income_expenses/1/edit
  def edit
  end

  # POST /income_expenses or /income_expenses.json
  def create
    @income_expense = IncomeExpense.new(income_expense_params)

    respond_to do |format|
      if @income_expense.save
        format.html { redirect_to income_expense_url(@income_expense), notice: "Income expense was successfully created." }
        format.json { render :show, status: :created, location: @income_expense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @income_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /income_expenses/1 or /income_expenses/1.json
  def update
    respond_to do |format|
      if @income_expense.update(income_expense_params)
        format.html { redirect_to income_expense_url(@income_expense), notice: "Income expense was successfully updated." }
        format.json { render :show, status: :ok, location: @income_expense }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @income_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_expenses/1 or /income_expenses/1.json
  def destroy
    @income_expense.destroy

    respond_to do |format|
      format.html { redirect_to income_expenses_url, notice: "Income expense was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income_expense
      @income_expense = IncomeExpense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def income_expense_params
      params.require(:income_expense).permit(:uid, :income_id, :status, :user_id)
    end
end
