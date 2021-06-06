class HomeController < ApplicationController
    def index
        #render 'home/index'
        #@title = 'でいとらああら'
        @article = Article.first
        
    end

    def about
        
    end
end