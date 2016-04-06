class CreatePromoCodes < ActiveRecord::Migration
  def change
    create_table :promo_codes do |t|
      t.datetime :expiration_date
      t.references :user, index: true, foreign_key: true
      t.string :code
      t.boolean :used

      t.timestamps null: false
    end
  end
end
