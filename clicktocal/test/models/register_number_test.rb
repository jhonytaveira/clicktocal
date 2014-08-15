require 'test_helper'

class RegisterNumberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @register_number = register_numbers(:admin)
  end

  test "Tem que ser válidos sem alterações" do
    assert @register_number.valid?
  end

  test "numero não pode ter nome vazio" do

    assert !@register_number.valid?
  end


end
