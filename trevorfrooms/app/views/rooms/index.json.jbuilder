json.array!(@rooms) do |room|
  json.extract! room, :id, :id, :name, :free, :user, :sdate
  json.url room_url(room, format: :json)
end
