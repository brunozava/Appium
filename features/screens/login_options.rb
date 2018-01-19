class LoginOptionScreen

    def initialize
        $driver.wait_true(5) { $driver.exists { $driver.find_element :id, 'com.inducesmile.androidecommerceshop:id/activity_login_option'} }
    end

end