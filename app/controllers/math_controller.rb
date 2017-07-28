class MathController <ApplicationController
    def root
        @square = params[:x].to_i ** 0.5
    end
    def showadd
    end
    def computeadd
        @x = params[:x].to_f
        @y = params[:y].to_f
        @sum = @x + @y
        render 'showadd'
    end
    def get_ransum
        render 'ransum'
    end
    def post_ransum
        count = params[:count].to_i
        start, stop = params[:range].split(',').map{|x| x.to_i}
        @numbers = count.times.map{rand(start..stop)}
        @sum = @numbers.sum
        render 'ransum'
    end

end
