module TheNotificationHelper
  def flash_class(level)
    case level
      when :notice then "alert-info"
      when :error  then "alert-danger"
      when :alert  then "alert-warning"
      else "alert-success"
    end
  end
end