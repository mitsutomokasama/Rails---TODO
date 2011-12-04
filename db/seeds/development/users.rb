%w(alpha beta gamma).each do |name|
  user = User.new(
    :email => "#{name}@example.com",
    :password => "#{name}",
    :password_confirmation => "#{name}"
  )
  user.save
  user.confirm!
end

