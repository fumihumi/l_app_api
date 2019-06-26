
json.array! @messages.each do |m|
  json.message m

  json.user do
    json.name m.user.name
    json.nickname m.user.nickname
  end
end
