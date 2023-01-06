require_relative '../files'
require_relative '../../person'
require_relative '../../decorator'
require_relative '../../capitalize'
require_relative '../../trim'

describe BaseDecorator do
  let(:person1) { Person.new(18, 'Parangaricutirimicuaro', false) }
  let(:base) { BaseDecorator.new(person1) }
  let(:trim) { Trimmer.new(person1) }
  let(:capitalize) { Capitalize.new(person1) }
  let(:capitalize_trim) { Capitalize.new(trim) }

  describe 'When call the base decorator' do
    it 'Creates an instance of it' do
      expect(base).to be_instance_of BaseDecorator
    end
  end

  describe 'After call it and correct name' do
    it 'returns the string trimmed and capitalize the 1st letter' do
      expect(base.correct_name).to eql 'Parangaricutirimicuaro'
      expect(trim.correct_name).to eql 'Parangaric'
      expect(capitalize.correct_name).to eql 'Parangaricutirimicuaro'
      expect(capitalize_trim.correct_name).to eql 'Parangaric'
    end
  end
end
