class DebtsController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"

  before_action :set_debt, only: %i[ show edit update destroy ]

  # GET /debts or /debts.json
  def index
    @debts = Debt.all
  end

  # GET /debts/1 or /debts/1.json
  def show
  end

  # GET /debts/new
  def new
    @debt_types = DebtType.all
    @contacts = Contact.all
    @debt = Debt.new
  end

  # GET /debts/1/edit
  def edit
    @debt_types = DebtType.all
    @contacts = Contact.all
  end

  # POST /debts or /debts.json
  def create
    @debt = current_user.debts.build(debt_params)

    respond_to do |format|
      if @debt.save
        @debt_types = DebtType.all
        format.html { redirect_to debts_path, notice: "Debt was successfully created." }
        format.json { render :show, status: :created, location: @debt }
      else
        @debt_types = DebtType.all
        @contacts = Contact.all
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @debt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debts/1 or /debts/1.json
  def update
    respond_to do |format|
      if @debt.update(debt_params)
        format.html { redirect_to debt_url(@debt), notice: "Debt was successfully updated." }
        format.json { render :show, status: :ok, location: @debt }
      else
        @debt_types = DebtType.all
        @contacts = Contact.all
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @debt.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @debt = Debt.find_by(uid: params[:debt_id])
  end

  # DELETE /debts/1 or /debts/1.json
  def destroy
    @debt.destroy

    respond_to do |format|
      format.html { redirect_to debts_url, notice: "Debt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debt
      @debt = Debt.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def debt_params
      params.require(:debt).permit(:debt_type_id, :contracted_at, :repayment_date, :designation, :is_creditor, :creditor, :amount, :status, :description)
    end
end
