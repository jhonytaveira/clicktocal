module RegisterNumbersHelper
  def get_ip
    `curl http://ipecho.net/plain`
  end

  def chooses_departments(department)
    case department
      when  I18n.t("financial")
        @register_number.department = 1004

      when I18n.t("technical_support")
        @register_number.department = 1008

      when I18n.t("attendance")
        @register_number.department = 1002
    end
  end
end
