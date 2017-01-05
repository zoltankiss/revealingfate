module ReadingsHelper
  def readings_text_field(form, str)
    tag("div", { id: str }, true) +
      form.text_field(str) + form.submit +
        tag("div", nil, false)
  end

  def readings_text_area(form, str, opts = {})
    tag("div", { id: str }, true) +
      form.text_area(str, opts) + form.submit +
        tag("div", nil, false)
  end
end
