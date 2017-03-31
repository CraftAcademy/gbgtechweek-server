require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { is_expected.to have_db_column :id }
  it { is_expected.to have_db_column :name }
  it { is_expected.to have_db_column :email }
  it { is_expected.to have_db_column :twitter }
  it { is_expected.to have_db_column :company }
  it { is_expected.to have_db_column :role }
  it { is_expected.to have_db_column :location }
  it { is_expected.to have_db_column :info }
end
