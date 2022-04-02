class IncomeSavingItemsController < ApplicationController
  before_action :set_income_saving_item, only: %i[ show edit update destroy ]

  # GET /income_saving_items or /income_saving_items.json
  def index
    @income_saving_items = IncomeSavingItem.all
  end

  # GET /income_saving_items/1 or /income_saving_items/1.json
  def show
  end

  # GET /income_saving_items/new
  def new
    @income_saving_item = IncomeSavingItem.new
  end

  # GET /income_saving_items/1/edit
  def edit
  end

  # POST /income_saving_items or /income_saving_items.json
  def create
    @income_saving_item = IncomeSavingItem.new(income_saving_item_params)

    respond_to do |format|
      if @income_saving_item.save
        format.html { redirect_to income_saving_item_url(@income_saving_item), notice: "Income saving item was successfully created." }
        format.json { render :show, status: :created, location: @income_saving_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @income_saving_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /income_saving_items/1 or /income_saving_items/1.json
  def update
    respond_to do |format|
      if @income_saving_item.update(income_saving_item_params)
        format.html { redirect_to income_saving_item_url(@income_saving_item), notice: "Income saving item was successfully updated." }
        format.json { render :show, status: :ok, location: @income_saving_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @income_saving_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_saving_items/1 or /income_saving_items/1.json
  def destroy
    @income_saving_item.destroy

    respond_to do |format|
      format.html { redirect_to income_saving_items_url, notice: "Income saving item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income_saving_item
      @income_saving_item = IncomeSavingItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def income_saving_item_params
      params.require(:income_saving_item).permit(:uid, :income_saving_id, :percenatge, :amount, :status)
    end
end
