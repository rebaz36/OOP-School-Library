require_relative '../../person'
require_relative '../../trim'

describe Trimmer do
  let(:person) { Person.new(23, 'parangaricutirimicuaro', false) }
  let(:trimmer) { Trimmer.new(person) }

  describe 'Whe calls trimmer' do
    it 'Creates an instance' do
      expect(trimmer).to be_an_instance_of(Trimmer)
    end
  end

  describe 'When use trimmer correct_name' do
    it 'returns trimmed name' do
      expect(trimmer.correct_name).to eql 'parangaric'
      expect(trimmer.correct_name).to_not eql 'parangaricutirimicuaro'
    end
  end
end
