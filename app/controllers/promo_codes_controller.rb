class PromoCodesController < ApplicationController
  PAYPAL_URLS = [
    'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=TN6Z4QXARGYBY',
    'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=PGDASL5RF4YZE',
    'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=3B7FMXJA2UWBW',
    'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=ZL5HV34LT8A7U'
  ]

  CODES = [
    'HTF01',
    'HTF02',
    'HTF03',
    'HTF04',
    'HTF05',

    'RWF01',
    'RWF02',
    'RWF03',
    'RWF04',
    'RWF05',

    'AZF01',
    'AZF02',
    'AZF03',
    'AZF04',
    'AZF05',

    'SCF01',
    'SCF02',
    'SCF03',
    'SCF04',
    'SCF05',

    'AGF01',
    'AGF02',
    'AGF03',
    'AGF04',
    'AGF05'
  ]

  def paypal_url
    if CODES.index(params[:promo_code])
      render text: PAYPAL_URLS[params[:package].to_i]
    else
      render text: 'not found'
    end
  end
end
