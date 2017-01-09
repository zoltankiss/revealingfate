module ReadingsHelper
  def self.number_to_ordinal(number)
    case number
    when 1
      'First'
    when 2
      'Second'
    when 3
      'Third'
    when 4
      'Forth'
    when 5
      'Fifth'
    when 6
      'Sixth'
    when 7
      'Seventh'
    when 8
      'Eight'
    when 9
      'Ninth'
    when 10
      'Tenth'
    else
      raise 'could not find ordinal number'
    end
  end

  def self.elements
    [
      'Yang Wood',
      'Yin Wood',
      'Yang Fire',
      'Yin Fire',
      'Yang Earth',
      'Yin Earth',
      'Yang Metal',
      'Yin Metal',
      'Yang Water',
      'Yin Water'
    ]
  end

  def self.roles
    [
      'Peer Assistance 比肩',
      'Benevolent Plunder 劫財',
      'Consuming Spirit 食神',
      'Rebellious Officer 傷官',
      'Direct Wealth 正財',
      'Indirect Wealth 偏財',
      'Just Officer 正官',
      'Seven Threats 七殺',
      'Direct Resource 正印',
      'Indirect Resource 偏印'
    ]
  end

  def self.cardinal_directions
    ['East', 'South', 'Center', 'West', 'North']
  end

  def self.button_id_to_button_label(button_id)
    "Update " + button_id.to_s.gsub('_', ' ')
  end

  def self.button_label_to_button_id(button_label)
    button_label.gsub(' ', '_').gsub("Update_", "")
  end

  def readings_select(form, str, fields, options)
    form.select str, fields, options
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
