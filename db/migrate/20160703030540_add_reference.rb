class AddReference < ActiveRecord::Migration
  def change
    add_reference :readings, :info_for_reading
  end
end
