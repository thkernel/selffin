class IncomeExpenseItemsController < ApplicationController
  before_action :set_income_expense_item, only: %i[ show edit update destroy ]

  # GET /income_expense_items or /income_expense_items.json
  def index
    @income_expense_items = IncomeExpenseItem.all
  end

  # GET /income_expense_items/1 or /income_expense_items/1.json
  def show
  end

  # GET /income_expense_items/new
  def new
    @income_expense_item = IncomeExpenseItem.new
  end

  # GET /income_expense_items/1/edit
  def edit
  end

  # POST /income_expense_items or /income_expense_items.json
  def create
    @income_expense_item = IncomeExpenseItem.new(income_expense_item_params)

    respond_to do |format|
      if @income_expense_item.save
        format.html { redirect_to income_expense_item_url(@income_expense_item), notice: "Income expense item was successfully created." }
        format.json { render :show, status: :created, location: @income_expense_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @income_expense_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /income_expense_items/1 or /income_expense_items/1.json
  def update
    respond_to do |format|
      if @income_expense_item.update(income_expense_item_params)
        format.html { redirect_to income_expense_item_url(@income_expense_item), notice: "Income expense item was successfully updated." }
        format.json { render :show, status: :ok, location: @income_expense_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @income_expense_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_expense_items/1 or /income_expense_items/1.json
  def destroy
    @income_expense_item.destroy

    respond_to do |format|
      format.html { redirect_to income_expense_items_url, notice: "Income expense item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income_expense_item
      @income_expense_item = IncomeExpenseItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def income_expense_item_params
      params.require(:income_expense_item).permit(:uid, :income_expense_id, :percenatge, :amount, :status)
    end
end
