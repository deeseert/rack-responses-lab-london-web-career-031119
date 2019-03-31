class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour > 0 && Time.now.hour <= 12
      resp.write "Good Morning!"
    elsif Time.now.hour > 12 && Time.now.hour <= 17
      resp.write "Good Afternoon!"
    else
      resp.write "Good Evening!"
    end
    resp.finish
  end

end
