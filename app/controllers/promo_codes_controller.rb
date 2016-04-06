class PromoCodesController < ApplicationController
  PAYPAL_URLS = [
    'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=TN6Z4QXARGYBY',
    'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=PGDASL5RF4YZE',
    'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=3B7FMXJA2UWBW',
    'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=ZL5HV34LT8A7U'
  ]

  def index
    @promo_codes = PromoCode.where("expiration_date < ?", DateTime.now + 60.days)
    @promo_code = PromoCode.new
  end

  def create
    PromoCode.create!(
      expiration_date: DateTime.now + 60.days,
      code: rand(1111111..9999999).to_s(16)
    )
    redirect_to promo_codes_path
  end

  def paypal_url
    code = PromoCode.where(code: params[:promo_code], used: nil).first
    if code
      code.used = true
      code.save!
      render text: PAYPAL_URLS[params[:package].to_i]
    elsif PromoCode.where(code: params[:promo_code], used: true).first
        render text: 'expired'
    else
      render text: 'not found'
    end
  end
end
