require_relative '../../decorator'
require_relative '../files'
require_relative '../../capitalize'
require_relative '../../person'

describe Capitalize do
  let(:person) { Person.new(25, 'Amanda', false) }
  let(:capitalize) { Capitalize.new(person) }

  describe 'When test CapitalizeDecorator functionality' do
    it 'Creates an instance of CapitalizeDecorator' do
      expect(capitalize).to be_an_instance_of(Capitalize)
    end
  end

  describe 'When use the method with a String' do
    it 'Returns a string with first letter capitalized' do
      expect(capitalize.correct_name).to eql 'Amanda'
      expect(capitalize.correct_name).to_not eql 'amanda'
    end
  end
end
