module ReadingsHelper
  def self.seasons_of_elements_map
    {
      'Season of Biding - Dormancy' => ['癸 gui3（陰水）- Yin Water'],
      'Season of Entwinement - Entanglement' => ['乙 yi3 （陰木）- Yin Wood'],
      'Season of Attraction - Obsession' => ['辛 xin1（陰金）- Yin Metal'],
      'Season of Warmth - Fading' => ['己 ji3（陰土）- Yang Earth', '丁 ding1（陰火）- Yin Fire'],
      'Season of Extension - Exhaustion' => ['甲 jia1（陽木）- Yang Wood', '壬 ren2 （陽水）- Yang Water'],
      'Season of Growth - Regression' => ['癸 gui3（陰水）- Yin Water', '乙 yi3 （陰木）- Yin Wood', '戊 wu4（陽土）- Yang Earth'],
      'Season of Rejuvenation - Injury' => ['丁 ding1（陰火）- Yin Fire', '辛 xin1（陰金）- Yin Metal', '戊 wu4（陽土）- Yang Earth'],
      'Season of Comfort - Reluctance' => ['乙 yi3 （陰木）- Yin Wood', '丁 ding1（陰火）- Yin Fire', '己 ji3（陰土）- Yin Earth'],
      'Season of Passion - Depletion' => ['戊 wu4（陽土）- Yang Earth', '丙 bing3（陽火）- Yang Fire', '甲 jia1（陽木）- Yang Wood'],
      'Season of Treasure - Trap' => ['辛 xin1（陰金）- Yin Metal', '癸 gui3（陰水）- Yin Water', '己 ji3（陰土）- Yin Earth'],
      'Season of Density - Fatality' => ['戊 wu4（陽土）- Yang Earth', '庚 geng1（陽金）- Yang Metal', '丙 bing3（陽火）- Yang Fire'],
      'Season of Clarity - Prudence' => ['戊 wu4（陽土）- Yang Earth', '壬 ren2 （陽水）- Yang Water', '庚 geng1（陽金）- Yang Metal']
    }
  end

  def self.seasons_of
    self.seasons_of_elements_map.keys
  end

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
    when 11
      'Eleventh'
    when 12
      'Twelfth'
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

  def self.animals
    [
      'Rat 鼠',
      'Ox 牛',
      'Tiger  虎',
      'Rabbit 兔',
      'Dragon  龍',
      'Snake 蛇',
      'Horse 馬',
      'Goat 羊',
      'Monkey  猴',
      'Rooster  雞',
      'Dog  夠',
      'Pig  豬'
    ]
  end

  def self.directions
    [
      '0° North',
      '30° North Northeast',
      '60° East Northeast',
      '90° East',
      '120° East Southeast',
      '150° South Southeast',
      '180° South',
      '210° South Southwest',
      '240° West Southwest',
      '270° West',
      '300° West Northwest',
      '330° North Northwest'
    ]
  end

  def self.seasons
    [
      'Mid-Winter',
      'Late Winter',
      'Early Spring',
      'Mid-Spring',
      'Late Spring',
      'Early Summer',
      'Mid-Summer',
      'Late Summer',
      'Early Autumn',
      'Mid-Autumn',
      'Late Autumn',
      'Early Winter'
    ]
  end

  def self.auspicious_time
    [
      '11 PM to 1 AM',
      '1 to 3 AM',
      '3 to 5 AM',
      '5 to 7 AM',
      '7 to 9 AM',
      '9 to 11 AM',
      '11 AM to 1 PM',
      '1 to 3 PM',
      '3 to 5 PM',
      '5 to 7 PM',
      '7 to 9 PM',
      '9 to 11 PM'
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

  def readings_select(form, str, fields, options, html_options = {})
    form.select str, fields, options, html_options.merge(class: 'reading_select')
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
