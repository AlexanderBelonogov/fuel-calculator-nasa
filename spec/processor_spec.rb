require 'spec_helper'

describe Processor do
  context 'calculates' do
    shared_examples 'fuel for' do |weight, route, expected|
      it "weight #{weight}" do
        total = described_class.new(weight, route).run
        expect(total).to eq expected
      end
    end

    it_behaves_like 'fuel for', 28_801, [
      [:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]
    ], 51_898

    it_behaves_like 'fuel for', 14_606, [[:launch, 9.807], [:land, 3.711], [:launch, 3.711], [:land, 9.807]], 33_388

    it_behaves_like 'fuel for', 75_432, [
      [:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 3.711], [:launch, 3.711], [:land, 9.807]
    ], 212_161
  end
end
