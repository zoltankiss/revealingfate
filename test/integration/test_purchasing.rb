require 'test_helper'

class TestPurchasing < ActionDispatch::IntegrationTest
  def test_purchasing_without_personalized_questions
    InfoForReading.delete_all
    Capybara.default_driver = Capybara.javascript_driver
    visit root_path
    click_link 'Reading Services'
    click_link '$19.99'
    fill_in 'info_for_reading_name', with: 'Zoltan Kiss'
    fill_in 'info_for_reading_email', with: 'zoltan@gmail.com'
    select 'Mr', from: 'info_for_reading_prefix'
    select 'Male', from: 'info_for_reading_gender'
    select '1990', from: 'info_for_reading_birth_date_1i'
    select 'April', from: 'info_for_reading_birth_date_2i'
    select '10', from: 'info_for_reading_birth_date_3i'
    select '11 PM', from: 'info_for_reading_birth_date_4i'
    select '33', from: 'info_for_reading_birth_date_5i'
    check 'terms'
    click_link_or_button 'paypal_button'
    click_link_or_button 'Place Order Anyway'

    info_for_reading = InfoForReading.first
    assert_equal 1, InfoForReading.count
    assert_equal 'mr', info_for_reading.prefix
    assert_equal 'male', info_for_reading.gender
    assert_equal DateTime.new(1990, 4, 10, 23, 33, 0), info_for_reading.birth_date
  end
end
