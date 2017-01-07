module ReadingsHelper
  def self.button_id_to_button_label(button_id)
    "Update " + button_id.to_s.gsub('_', ' ')
  end

  def self.button_label_to_button_id(button_label)
    button_label.gsub(' ', '_').gsub("Update_", "")
  end

  def readings_text_field(form, str)
    label = ReadingsHelper.button_id_to_button_label str

    tag("div", { id: str }, true) +
      form.text_field(str) +
        form.submit(nil, name: 'field_updated', value: label) +
          tag("div", nil, false)
  end

  def readings_text_area(form, str, opts = {})
    label = ReadingsHelper.button_id_to_button_label str

    tag("div", { id: str }, true) +
      form.text_area(str, opts) +
        form.submit(nil, name: 'field_updated', value: label) +
          tag("div", nil, false)
  end
end
