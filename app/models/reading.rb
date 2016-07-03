class Reading < ActiveRecord::Base
  belongs_to :info_for_reading

  def birth_date
    info_for_reading.birth_date
  end

  def info_for_reading
    @info_for_reading ||= InfoForReading.find_or_create_by(id: info_for_reading_id)
  end
end
