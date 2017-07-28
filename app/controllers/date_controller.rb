class DateController <ApplicationController
    def time
        @currenttime = Time.new()
        binding.pry
    end
end