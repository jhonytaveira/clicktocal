class RegisterNumbersController < ApplicationController

  # GET /register_numbers/new
  def new

    @register_number = RegisterNumber.new

  end

  def index

  end

  # POST /register_numbers
  # POST /register_numbers.json
  def create
    @register_number = RegisterNumber.new(register_number_params)

    respond_to do |format|
      if @register_number.save
        format.html { redirect_to new_register_number_path, notice: 'Register number was successfully created.' }
        format.json { render :show, status: :created, location: @register_number }
      else
        format.html { render :new }
        format.json { render json: @register_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def register_number_params
    params.require(:register_number).permit(:ip, :ddd, :number, :carried_out)
  end
end
