class BaseScreen
    def touch_element(id)
        $driver.find_element(:id, id).click
    end

    def wait(id, timeout = 5)
        begin
            $driver.wait_true(timeout) { $driver.exists { $driver.find_element :id, id} }
        rescue   
            raise "Elemento de id '#{id}' não encontrado"
        end 
    end
end