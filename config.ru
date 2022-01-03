require 'rack'
require 'pry'

class App
    def call(env)
        path = env["PATH_INFO"]
        # binding.pry
        if path == "/"
            [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2>"]]
        elsif path == "/coffee"
            [418, { "Content-Type" => "text/hmtl" }, ["<img src='https://marktwendell.com/pub/media/catalog/product/cache/4bb65f759b3e9b7d3777ef41894def0d/f/o/for-life.jpg_1.png'> </img>"]]
        else
            [404, { "Content-Type" => "text/html" }, ["Page not found"]]
        end
    end
end

run App.new