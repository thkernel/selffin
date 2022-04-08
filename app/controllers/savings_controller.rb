class SavingsController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"

  before_action :set_saving, only: %i[ show edit update destroy ]

  # GET /savings or /savings.json
  def index
    @savings = Saving.all
  end

  # GET /savings/1 or /savings/1.json
  def show
  end

  # GET /savings/new
  def new
     @banks = Bank.all
    @saving = Saving.new
  end

  # GET /savings/1/edit
  def edit
     @banks = Bank.all
  end

  # POST /savings or /savings.json
  def create
    @saving = current_user.savings.build(saving_params)

    respond_to do |format|
      if @saving.save
        format.html { redirect_to savings_path, notice: "Saving was successfully created." }
        format.json { render :show, status: :created, location: @saving }
      else
        @banks = Bank.all
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @saving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /savings/1 or /savings/1.json
  def update
    respond_to do |format|
      if @saving.update(saving_params)
        format.html { redirect_to savings_path, notice: "Saving was successfully updated." }
        format.json { render :show, status: :ok, location: @saving }
      else
         @banks = Bank.all
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @saving.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @saving = Saving.find_by(uid: params[:saving_id])
  end



  # DELETE /savings/1 or /savings/1.json
  def destroy
    @saving.destroy

    respond_to do |format|
      format.html { redirect_to savings_url, notice: "Saving was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saving
      @saving = Saving.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saving_params
      params.require(:saving).permit(:saving_date, :designation, :bank_id, :description, :amount, :status)
    end
end
