json.contacts @contacts.each do |contact|
  json.name contact.name
  json.email contact.email
  json.company contact.company
  json.role contact.role
  json.location contact.location
  json.info contact.info
end