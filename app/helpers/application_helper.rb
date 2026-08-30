# frozen_string_literal: true

module ApplicationHelper
  def flash_class(level)
    map = {
      notice: "alert alert-info",
      success: "alert alert-success",
      error: "alert alert-error",
      alert: "alert alert-error"
    }

    map.fetch(level, :alert)
  end
end
