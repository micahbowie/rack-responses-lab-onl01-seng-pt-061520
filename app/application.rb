class Application
 
  def call(env)
    resp = Rack::Response.new
    time = Time.new
 
    if time.strftime("%k") <= 11
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon"
    end
 
    resp.finish
  end
 
end