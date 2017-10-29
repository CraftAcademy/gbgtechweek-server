
RSpec.describe 'Contacts API endpoint' do
  let!(:contact) { FactoryGirl.create(:contact)}

  it 'returns a list of contacts' do
    get '/api/contacts'

    expect(JSON.parse(response.body)['data'][0]['name']).to eq contact.name
    expect(JSON.parse(response.body)['data'][0]['email']).to eq contact.email
    expect(JSON.parse(response.body)['data'][0]['company']).to eq contact.company
    expect(JSON.parse(response.body)['data'][0]['role']).to eq contact.role
    expect(JSON.parse(response.body)['data'][0]['location']).to eq contact.location
    expect(JSON.parse(response.body)['data'][0]['twitter']).to eq contact.twitter
    expect(JSON.parse(response.body)['data'][0]['info']).to eq contact.info
    expect(JSON.parse(response.body)['data'][0]['image']).to eq contact.image
  end
end