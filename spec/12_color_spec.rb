# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 12 Enough contrast?

require_relative '../12_color'

RSpec.describe Color do
  let(:dark_purple) { described_class.new(42, 21, 58) }
  let(:pale_blue) { described_class.new(100, 200, 255) }
  let(:dark_washed_red) { described_class.new(240, 41, 25) }

  context 'when creating' do
    context 'when r,g,b supplied' do
      it 'initializes the color with the red value' do
        expect(dark_purple.r).to eq 42
      end

      it 'initializes the color with the green value' do
        expect(dark_purple.g).to eq 21
      end

      it 'initializes the color with the blue value' do
        expect(dark_purple.b).to eq 58
      end
    end
  end

  describe '#brightness_index' do
    it 'returns the correct brightness index for (42, 21, 58)' do
      expect(dark_purple.brightness_index).to be 31
    end

    it 'returns the correct brightness index for (100, 200, 255)' do
      expect(pale_blue.brightness_index).to be 176
    end
  end

  describe '#brightness_difference' do
    it 'returns the correct brighness difference between 2 colors' do
      # Note that the original RubyMonk test used expected value of 140
      # but I could not determine the original colors used
      expect(dark_purple.brightness_difference(pale_blue)).to be 145
    end
  end

  describe '#hue_difference' do
    it 'returns the correct hue difference between 2 colors' do
      expect(dark_purple.hue_difference(dark_washed_red)).to be 251
    end
  end

  describe '#enough_contrast?' do
    let(:almost_black) { described_class.new(42, 42, 42) }
    let(:light_gray) { described_class.new(210, 210, 210) }

    it 'tells that there is is not enough contrast between (42, 21, 58) and (240, 41, 25)' do
      expect(dark_purple.enough_contrast?(dark_washed_red)).to be false
    end

    it 'tells that there is is enough contrast between (42, 42, 42) and (210, 210, 210)' do
      expect(almost_black.enough_contrast?(light_gray)).to be true
    end
  end
end
