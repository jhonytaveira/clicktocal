class RegisterNumber < ActiveRecord::Base

   validates :number, uniqueness: true,presence: true
   validates :ddd, uniqueness: true,presence: true



end
