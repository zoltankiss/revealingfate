class AddDiscountRateToPromoCode < ActiveRecord::Migration
  def change
    add_column :promo_codes, :discount_rate, :string
    PromoCode.where(discount_rate: nil).update_all(discount_rate: '30%')
  end
end
