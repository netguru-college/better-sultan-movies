# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Shelf, type: :model do
  let(:shelf) { FactoryBot.create(:shelf) }
  subject { shelf }

  it { expect(subject).to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).scoped_to(:user_id) }
end
