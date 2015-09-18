class HogesController < ApplicationController

    def index
        @hoges = Hoge.all
    end

    def new
        @hoge = Hoge.new
    end

    def create
        @hoge = Hoge.new(hoge_params)
    end

    private
        def hoge_params
            params.require(:hoge).permit(:name)
        end
end
