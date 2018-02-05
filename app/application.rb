class Application

  def call(env)
    resp = Response.new

    time = Time.getlocal.hour

    if time >= 0 && time <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
