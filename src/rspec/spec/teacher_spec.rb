require_relative 'person_spec'
require_relative '../files'
require_relative '../../teacher'

describe Teacher do
  context 'When test the Teacher class' do
    it 'Creates a Teacher object' do
      teacher = Teacher.new(28, 'Christina Miller', 'Science')
      expect(teacher).to have_attributes(age: 28)
      expect(teacher).to have_attributes(name: 'Christina Miller')
      expect(teacher.specialization).to eql(nil)
    end
  end
end
