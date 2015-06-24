json.array!(@partnerships) do |partnership|
  json.extract! partnership, :id, :user_id, :partner_id, :create, :destroy
  json.url partnership_url(partnership, format: :json)
end
