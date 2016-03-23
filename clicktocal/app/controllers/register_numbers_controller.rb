class RegisterNumbersController < ApplicationController
  include RegisterNumbersHelper

  def new
    @register_number = RegisterNumber.new
  end

  def create
    @register_number = RegisterNumber.new(register_number_params)
    chooses_departments params[:register_number][:department]
    save
  end

  def register_number_params
    params.require(:register_number).permit(:ip, :ddd, :number, :carried_out, :department)
  end

  def messages
    flash[:notice] = [I18n.t("messages.record_number_created_successfully")]
    flash[:notice] << I18n.t("messages.in_a_moment_we_will_contact_you")
  end

  def save
    respond_to do |format|
      if verify_recaptcha(model: @register_number) && @register_number.save
        messages
        format.html { redirect_to new_register_number_path }
        format.json { render :show, status: :created, location: @register_number }
      else
        format.html { render :new }
        format.json { render json: @register_number.errors, status: :unprocessable_entity }
      end
    end
  end
end
