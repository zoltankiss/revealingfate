task :create_promo_codes do
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
  ].each do |promo_code|
    PromoCode.create!(
      expiration_date: DateTime.now + 60.days,
      code: promo_code
    )
  end
end