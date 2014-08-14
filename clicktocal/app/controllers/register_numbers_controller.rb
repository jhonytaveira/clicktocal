class RegisterNumbersController < ApplicationController
  before_action :set_register_number, only: [:show, :edit, :update, :destroy]

  # GET /register_numbers
  # GET /register_numbers.json
  def index
    @register_numbers = RegisterNumber.all
  end

  # GET /register_numbers/1
  # GET /register_numbers/1.json
  def show
  end

  # GET /register_numbers/new
  def new
    @register_number = RegisterNumber.new
  end

  # GET /register_numbers/1/edit
  def edit
  end

  # POST /register_numbers
  # POST /register_numbers.json
  def create
    @register_number = RegisterNumber.new(register_number_params)

    respond_to do |format|
      if @register_number.save
        format.html { redirect_to @register_number, notice: 'Register number was successfully created.' }
        format.json { render :show, status: :created, location: @register_number }
      else
        format.html { render :new }
        format.json { render json: @register_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /register_numbers/1
  # PATCH/PUT /register_numbers/1.json
  def update
    respond_to do |format|
      if @register_number.update(register_number_params)
        format.html { redirect_to @register_number, notice: 'Register number was successfully updated.' }
        format.json { render :show, status: :ok, location: @register_number }
      else
        format.html { render :edit }
        format.json { render json: @register_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /register_numbers/1
  # DELETE /register_numbers/1.json
  def destroy
    @register_number.destroy
    respond_to do |format|
      format.html { redirect_to register_numbers_url, notice: 'Register number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register_number
      @register_number = RegisterNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_number_params
      params.require(:register_number).permit(:ip, :ddd, :number, :carried_out)
    end
end
