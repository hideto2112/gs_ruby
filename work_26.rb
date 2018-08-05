require 'date'

# ENV['TZ'] = 'UTC'
# time = Time.now

time = Time.now.utc
puts time.strftime('%Y-%m-%d %H:%M')