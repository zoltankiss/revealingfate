module ReadingsHelper
  def readings_text_field(form, str)
    form.text_field(str) + form.submit
  end

  def readings_text_area(form, str, opts = {})
    form.text_area(str, opts) + form.submit
  end
end
