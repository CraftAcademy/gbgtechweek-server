
RSpec.describe 'Contacts API endpoint' do
  let!(:contact) { FactoryGirl.create(:contact)}

  it 'returns a list of contacts' do
    get '/api/contacts'

    expect(response_json['contacts'][0].name).to eq contact.name
  end
end