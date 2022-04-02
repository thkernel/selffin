class BankMovementsController < ApplicationController
  before_action :set_bank_movement, only: %i[ show edit update destroy ]

  # GET /bank_movements or /bank_movements.json
  def index
    @bank_movements = BankMovement.all
  end

  # GET /bank_movements/1 or /bank_movements/1.json
  def show
  end

  # GET /bank_movements/new
  def new
    @bank_movement = BankMovement.new
  end

  # GET /bank_movements/1/edit
  def edit
  end

  # POST /bank_movements or /bank_movements.json
  def create
    @bank_movement = BankMovement.new(bank_movement_params)

    respond_to do |format|
      if @bank_movement.save
        format.html { redirect_to bank_movement_url(@bank_movement), notice: "Bank movement was successfully created." }
        format.json { render :show, status: :created, location: @bank_movement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bank_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_movements/1 or /bank_movements/1.json
  def update
    respond_to do |format|
      if @bank_movement.update(bank_movement_params)
        format.html { redirect_to bank_movement_url(@bank_movement), notice: "Bank movement was successfully updated." }
        format.json { render :show, status: :ok, location: @bank_movement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bank_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_movements/1 or /bank_movements/1.json
  def destroy
    @bank_movement.destroy

    respond_to do |format|
      format.html { redirect_to bank_movements_url, notice: "Bank movement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_movement
      @bank_movement = BankMovement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bank_movement_params
      params.require(:bank_movement).permit(:uid, :movement_type, :designation, :description, :source_id, :destination_id, :amount, :status, :user_id)
    end
end
