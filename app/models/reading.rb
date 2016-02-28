class Reading < ActiveRecord::Base
  belongs_to :info_for_reading

  def birth_date
    info_for_reading.birth_date
  end
end
