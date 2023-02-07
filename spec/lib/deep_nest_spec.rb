RSpec.describe "DeepNest" do
  describe '::deep_dup(structure)' do
    subject { DeepNest.deep_dup(original) }

    describe 'when original structure is a scalar' do
      let(:original) { 'hello' }

      it 'returns the same value' do
        is_expected.to eq(original)
      end

      it 'allows changing of the copy without changing the original' do
        copy = subject
        copy += '!'

        expect(copy).to_not eq(original)
      end
    end

    # describe 'when original structure is a simple array' do
    #   let(:original) { ['a', 'b', 'c', 'd'] }
    #
    #   it 'returns the same value' do
    #     is_expected.to eq(original)
    #   end
    #
    #   it 'allows changing of the copy without changing the original' do
    #     copy = subject
    #     copy[0] = 'turtles'
    #
    #     expect(copy).to_not eq(original)
    #   end
    # end
    #
    # describe 'when original structure is a simple hash' do
    #   let(:original) { {a: 'a', b: 'b', c: 'd'} }
    #
    #   it 'returns the same value' do
    #     is_expected.to eq(original)
    #   end
    #
    #   it 'allows changing of the copy without changing the original' do
    #     copy = subject
    #     copy[:a] = 'turtles'
    #
    #     expect(copy).to_not eq(original)
    #   end
    # end
    #
    # describe 'when original structure is an array of arrays' do
    #   let(:original) { [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']] }
    #
    #   it 'returns the same value' do
    #     is_expected.to eq(original)
    #   end
    #
    #   it 'allows changing of the copy without changing the original' do
    #     copy = subject
    #     copy[0][0] = 'turtles'
    #
    #     expect(copy).to_not eq(original)
    #   end
    # end
    #
    # describe 'when original structure is a hash of hashes' do
    #   let(:original) { {a: {a: 'a'}, b: {b: 'b'}, c: {c: 'c'}} }
    #
    #   it 'returns the same value' do
    #     is_expected.to eq(original)
    #   end
    #
    #   it 'allows changing of the copy without changing the original' do
    #     copy = subject
    #     copy[:a][:a] = 'turtles'
    #
    #     expect(copy).to_not eq(original)
    #   end
    # end
    #
    # describe 'when original structure is deeply nested' do
    #   let(:original) { {a: {b: {c: {d: [{e: 'e'}]}}}} }
    #
    #
    #   it 'returns the same value' do
    #     is_expected.to eq(original)
    #   end
    #
    #   it 'allows changing of the copy without changing the original' do
    #     copy = subject
    #     copy[:a][:b][:c][:d][0][:e] = 'turtles'
    #
    #     expect(copy).to_not eq(original)
    #   end
    # end
  end
end
