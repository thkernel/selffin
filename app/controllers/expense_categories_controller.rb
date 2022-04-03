class ExpenseCategoriesController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"

  before_action :set_expense_category, only: %i[ show edit update destroy ]

  # GET /expense_categories or /expense_categories.json
  def index
    @expense_categories = ExpenseCategory.all
  end

  # GET /expense_categories/1 or /expense_categories/1.json
  def show
  end

  # GET /expense_categories/new
  def new
    @priorities = Priority.all

    @expense_category = ExpenseCategory.new
  end

  # GET /expense_categories/1/edit
  def edit
    @priorities = Priority.all
  end

  # POST /expense_categories or /expense_categories.json
  def create
    @expense_category = current_user.expense_categories.build(expense_category_params)

    respond_to do |format|
      if @expense_category.save
         @expense_categories = ExpenseCategory.all
        format.html { redirect_to expense_category_url(@expense_category), notice: "Expense category was successfully created." }
        format.json { render :show, status: :created, location: @expense_category }
        format.js
      else
        @priorities = Priority.all

        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @expense_category.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /expense_categories/1 or /expense_categories/1.json
  def update
    respond_to do |format|
      if @expense_category.update(expense_category_params)
         @expense_categories = ExpenseCategory.all

        format.html { redirect_to expense_category_url(@expense_category), notice: "Expense category was successfully updated." }
        format.json { render :show, status: :ok, location: @expense_category }
        format.js
      else
        @priorities = Priority.all
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @expense_category.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
      @expense_category = ExpenseCategory.find_by(uid: params[:expense_category_id])
    end

  # DELETE /expense_categories/1 or /expense_categories/1.json
  def destroy
    @expense_category.destroy

    respond_to do |format|
      format.html { redirect_to expense_categories_url, notice: "Expense category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_category
      @expense_category = ExpenseCategory.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expense_category_params
      params.require(:expense_category).permit( :name, :priority_id, :status)
    end
end
