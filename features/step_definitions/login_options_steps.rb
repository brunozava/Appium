Given("I'm in login types screen") do
    $driver.wait_true(5) { $driver.exists { $driver.find_element :id, 'com.inducesmile.androidecommerceshop:id/activity_login_option'} }
end
  
When("I tap in sign up button") do
    button = $driver.find_element :id, 'com.inducesmile.androidecommerceshop:id/sign_up'
    button.click
end
  
Then("Register screen should be displayed") do
    $driver.wait_true(5) { $driver.exists { $driver.find_element :id, 'com.inducesmile.androidecommerceshop:id/activity_sign_up'} }
end
  
When("I tap in sign in button") do
    button = $driver.find_element :id, 'com.inducesmile.androidecommerceshop:id/sign_in'
    button.click
end
  
Then("Login screen should be displayed") do
    $driver.wait_true(5) { $driver.exists { $driver.find_element :id, 'com.inducesmile.androidecommerceshop:id/activity_login'} }
end