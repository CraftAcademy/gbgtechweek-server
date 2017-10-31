
RSpec.describe 'Contacts API endpoint' do
  let!(:contact) { FactoryGirl.create(:contact)}

  it 'returns a list of contacts' do
    get '/api/contacts'
    listing = JSON.parse(response.body)['data'][0]['attributes']
    expect(JSON.parse(response.body)['data'][0]['type']).to eq 'contacts'
    expect(listing['name']).to eq contact.name
    expect(listing['email']).to eq contact.email
    expect(listing['company']).to eq contact.company
    expect(listing['role']).to eq contact.role
    expect(listing['location']).to eq contact.location
    expect(listing['twitter']).to eq contact.twitter
    expect(listing['info']).to eq contact.info
    expect(listing['image']).to eq contact.image
  end
end