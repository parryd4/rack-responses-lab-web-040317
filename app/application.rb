class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now.hour

    if t < 12
      daypart = "Morning"
    else
      daypart = "Afternoon"
    end
    resp.write "Good #{daypart}"
    resp.finish
  end

end
