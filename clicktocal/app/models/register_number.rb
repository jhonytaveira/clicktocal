class RegisterNumber < ActiveRecord::Base

  validates :number, presence: true
  validates :ddd, presence: true


  def arrayDDD
    ddds = [62, 64]
  end


end
