class BanksController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"

  before_action :set_bank, only: %i[ show edit update destroy ]

  # GET /banks or /banks.json
  def index
    @banks = Bank.all
  end

  # GET /banks/1 or /banks/1.json
  def show
  end

  # GET /banks/new
  def new
    @bank = Bank.new
  end

  # GET /banks/1/edit
  def edit
  end

  # POST /banks or /banks.json
  def create
    @bank = current_user.banks.build(bank_params)

    respond_to do |format|
      if @bank.save
        @banks = Bank.all
        
        format.html { redirect_to bank_url(@bank), notice: "Bank was successfully created." }
        format.json { render :show, status: :created, location: @bank }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bank.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /banks/1 or /banks/1.json
  def update
    respond_to do |format|
      if @bank.update(bank_params)
        @banks = Bank.all
        format.html { redirect_to bank_url(@bank), notice: "Bank was successfully updated." }
        format.json { render :show, status: :ok, location: @bank }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bank.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
    @bank = Bank.find_by(uid: params[:bank_id])
  end

  # DELETE /banks/1 or /banks/1.json
  def destroy
    @bank.destroy

    respond_to do |format|
      format.html { redirect_to banks_url, notice: "Bank was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank
      @bank = Bank.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bank_params
      params.require(:bank).permit(:account_type, :name, :account_number, :balance, :description, :status)
    end
end
