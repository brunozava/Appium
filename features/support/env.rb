require 'appium_lib'
require 'pry'
require 'appium_console'
#require 'tomlrb'

# Create a custom World class so we don't pollute `Object` with Appium methods
class AppiumWorld
end

# Load the desired configuration from appium.txt, create a driver then
# Add the methods to the world
caps_path = File.join(File.dirname(__FILE__), '..', '..', 'caps')
caps = Appium.load_appium_txt file: File.join(caps_path, 'appium.txt'), verbose: true
#caps_path = File.join(File.dirname(__FILE__), '..', '..', 'caps', 'appium.txt')
#caps = Appium.load_appium_txt file: caps_path, verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods AppiumWorld

#World do
  #AppiumWorld.new
#end

#Before { $driver.start_driver }
#After { $driver.driver_quit }

World do
  AppiumWorld.new
end

  $driver.start_driver

FeatureMemory = Struct.new(:feature).new

Before do |scenario|

  @feature_name = scenario.feature.feature_name

  $driver.launch_app unless FeatureMemory.nil?

  if FeatureMemory.feature != @feature_name
    $driver.remove_app "com.inducesmile.androidecommerceshop"
    $driver.launch_app
  end
  FeatureMemory.feature = @feature_name
end

After do |scenario|
  file = "C:\projetos\cucumber\src\tests\Appium\evidences\screenshot_#{Time.now.strftime('%Y%m%d%H%M%S')}.png"
  #file = 'C:\projetos\cucumber\src\tests\Appium\evidences\screenshot_#{Time.now.strftime('%Y%m%d%H%M%S')}.png'
  $driver.screenshot(file) if scenario.failed?
  $driver.close_app
end