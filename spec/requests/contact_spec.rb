
RSpec.describe 'Contacts API endpoint' do
  let!(:contact) { FactoryGirl.create(:contact)}

  it 'returns a list of contacts' do
    get '/api/contacts'

    expect(JSON.parse(response.body)['contacts'][0]['name']).to eq contact.name
    expect(JSON.parse(response.body)['contacts'][0]['email']).to eq contact.email
    expect(JSON.parse(response.body)['contacts'][0]['company']).to eq contact.company
    expect(JSON.parse(response.body)['contacts'][0]['role']).to eq contact.role
    expect(JSON.parse(response.body)['contacts'][0]['location']).to eq contact.location
    expect(JSON.parse(response.body)['contacts'][0]['twitter']).to eq contact.twitter
    expect(JSON.parse(response.body)['contacts'][0]['info']).to eq contact.info
  end
end