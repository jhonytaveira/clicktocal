class RegisterNumber < ActiveRecord::Base

  validates :number, :ddd, :department, presence: true
  validates :number, numericality: true, length: { is: 8 }

  validate :call_open?

  def call_open?
    if self.class.by_number(number).by_ddd(ddd).open.any?
      errors.add(:base, :please_wait_in_a_moment_we_will_contact_you)
    end
  end

  def department_all
    [I18n.t("technical_support"), I18n.t("attendance"), I18n.t("financial")]
  end

  def ddd_all
    [62, 64]
  end

  scope :by_number, -> value { where(number: value) }
  scope :by_ddd, -> value { where(ddd: value) }
  scope :open, -> { where(carried_out: false) }
end
