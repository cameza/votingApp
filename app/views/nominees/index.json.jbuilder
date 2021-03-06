json.array!(@nominees) do |nominee|
  json.extract! nominee, :id, :nominee_mail, :nominee_name, :cv, :statement, :committee_check, :committee_check_count, :chairman_check, :confirmed, :not_confirmed, :abstained
  json.url nominee_url(nominee, format: :json)
end
