require 'appium_lib'
require 'cucumber'
require 'capybara'
require 'touch_action'
require 'rspec'


desired_caps = Appium.load_appium_txt file: File.expand_path('./../../../../appium_android.txt', __FILE__), verbose: true
driver = Appium::Driver.new(desired_caps, true)
Appium.promote_appium_methods Object
driver.start_driver
