class WalletMovementsController < ApplicationController
  before_action :set_wallet_movement, only: %i[ show edit update destroy ]

  # GET /wallet_movements or /wallet_movements.json
  def index
    @wallet_movements = WalletMovement.all
  end

  # GET /wallet_movements/1 or /wallet_movements/1.json
  def show
  end

  # GET /wallet_movements/new
  def new
    @wallet_movement = WalletMovement.new
  end

  # GET /wallet_movements/1/edit
  def edit
  end

  # POST /wallet_movements or /wallet_movements.json
  def create
    @wallet_movement = WalletMovement.new(wallet_movement_params)

    respond_to do |format|
      if @wallet_movement.save
        format.html { redirect_to wallet_movement_url(@wallet_movement), notice: "Wallet movement was successfully created." }
        format.json { render :show, status: :created, location: @wallet_movement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wallet_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wallet_movements/1 or /wallet_movements/1.json
  def update
    respond_to do |format|
      if @wallet_movement.update(wallet_movement_params)
        format.html { redirect_to wallet_movement_url(@wallet_movement), notice: "Wallet movement was successfully updated." }
        format.json { render :show, status: :ok, location: @wallet_movement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wallet_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallet_movements/1 or /wallet_movements/1.json
  def destroy
    @wallet_movement.destroy

    respond_to do |format|
      format.html { redirect_to wallet_movements_url, notice: "Wallet movement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallet_movement
      @wallet_movement = WalletMovement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wallet_movement_params
      params.require(:wallet_movement).permit(:uid, :movement_type, :designation, :description, :source_id, :destination_id, :amount, :status, :user_id)
    end
end
