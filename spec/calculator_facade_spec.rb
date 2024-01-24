require 'spec_helper'

describe CalculatorFacade do
  let(:weigth) { 28_801 }
  let(:route) do
    [
      [:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]
    ]
  end

  context 'calculates' do
    it 'returns results' do
      expected = <<~HELLO
        Calculating land for 9.807 gravity
        Calculating launch for 1.62 gravity
        Calculating land for 1.62 gravity
        Calculating launch for 9.807 gravity
        Total fuel weight required for the trip: 51898 kg
      HELLO
      expect { described_class.run(weigth, route) }.to output(expected).to_stdout
    end
  end

  context 'validates' do
    it 'puts error messag' do
      expect { described_class.run(weigth, []) }.to output("Route is empty\n").to_stdout
    end
  end
end
