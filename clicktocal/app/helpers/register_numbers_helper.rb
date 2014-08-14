module RegisterNumbersHelper
  def get_ip
    `curl http://ipecho.net/plain`
  end
end
