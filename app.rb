require "sinatra"
require "json"

class App < Sinatra::Base
    @@data = {}
    get '/' do
        content_type :json
        @@data.to_json
    end

    post '/' do
        d = params[:x]
        @@data[d] = true
        content_type :json
        res = {
            result: "ok"
        }
        res.to_json
    end
end
