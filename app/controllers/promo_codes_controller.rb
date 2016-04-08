class PromoCodesController < ApplicationController
  PAYPAL_URLS = {
    '50%' => [
      'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=TN6Z4QXARGYBY',
      'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=PGDASL5RF4YZE',
      'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=3B7FMXJA2UWBW',
      'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=ZL5HV34LT8A7U'
    ],
    '30%' => [
      'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=LKRKJVQBQQU3J',
      'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=TP6239XRWG6P8',
      'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=DEWLEGLD26VGA',
      'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=74NU3T8HEP6VU'
    ]
  }

  def index
    authenticate_user
    @promo_codes = PromoCode.where("expiration_date < ?", DateTime.now + 60.days).order(:created_at).reverse_order
    @promo_code = PromoCode.new
  end

  def create
    authenticate_user
    PromoCode.create!(
      expiration_date: DateTime.now + 60.days,
      code: rand(1111111..9999999).to_s(16),
      discount_rate: params[:promo_code][:discount_rate]
    )
    redirect_to promo_codes_path
  end

  def destroy
    authenticate_user
    PromoCode.where(id: params[:id]).first.destroy
    redirect_to promo_codes_path
  end

  def paypal_url
    code = PromoCode.where(code: params[:promo_code], used: nil).first
    if code
      code.used = true
      code.save!
      render text: PAYPAL_URLS[code.discount_rate][params[:package].to_i]
    elsif PromoCode.where(code: params[:promo_code], used: true).first
        render text: 'expired'
    else
      render text: 'not found'
    end
  end
end
