Given("I'm in Intro page") do
    @page = IntroScreen.new
end

When("I tap Iniciar app button") do
    @page.touch_start_app_button
end
  
Then("I should see login options screen") do
    LoginOptionScreen.new
end