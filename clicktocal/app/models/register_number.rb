class RegisterNumber < ActiveRecord::Base

   validates :number,presence: true
   validates :ddd,presence: true



end
