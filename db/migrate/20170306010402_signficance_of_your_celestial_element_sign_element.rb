class SignficanceOfYourCelestialElementSignElement < ActiveRecord::Migration
  def change
    add_column :readings, :significance_of_your_celestial_element_sign_element, :string
  end
end
