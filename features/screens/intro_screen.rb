class IntroScreen < BaseScreen
    def dic
    {
        start_app_button: 'com.inducesmile.androidecommerceshop:id/start_app'
    }
    end

    def initialize
        wait 'com.inducesmile.androidecommerceshop:id/activity_intro'
    end 

    def touch_start_app_button
        touch_element dic[:start_app_button] 
    end
end