module ApplicationHelper

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)}") do
        concat content_tag(:button, '×', class: "close", data: { dismiss: 'alert' })
        concat message
      end)
    end
    nil
  end

  def d(date)
    date.strftime("%d-%m-%Y at %H:%M:%S")
  end

  def stars(rating)
    rating > 0 ? rating.to_i : 0
  end

end
