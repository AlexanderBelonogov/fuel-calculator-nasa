require 'spec_helper'

describe Validator do
  let(:valid_weigth) { 28_801 }
  let(:valid_route) do
    [
      [:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]
    ]
  end
  let(:invalid_route) { [] }
  let(:invalid_weigth) { -28_801 }

  context 'passess' do
    it 'for valid params' do
      expect { described_class.new(valid_weigth, valid_route).valid? }.to_not raise_error
    end
  end

  context 'raises error' do
    it 'for invalid route' do
      expect { described_class.new(valid_weigth, invalid_route).valid? }.to raise_error Validator::ValidationError
    end

    it 'for invalid weigth' do
      expect { described_class.new(invalid_weigth, valid_route).valid? }.to raise_error Validator::ValidationError
    end
  end
end
