require_relative 'student_spec'
require_relative '../files'
require_relative '../../classroom'

describe Classroom do
  let(:classroom) { Classroom.new('Science') }

  describe 'When call the classroom variable' do
    it 'returns an instance of Classroom' do
      expect(classroom).to be_instance_of Classroom
    end
  end

  describe 'Add a label' do
    it 'has a label "Science"' do
      expect(classroom.label).to eq 'Science'
    end
  end

  describe 'Add a student' do
    it 'Add a new student into student classroom' do
      classroom.add_students(Student.new(15, self, 'Melanie'))
      classroom.add_students(Student.new(20, self, 'Austria'))
      expect(classroom.students.size).to eql 2
    end
  end

  describe 'Add a student' do
    it 'Add a new student into student classroom' do
      classroom.add_students(Student.new(15, self, 'Melanie'))
      classroom.add_students(Student.new(20, self, 'Austria'))
      expect(classroom.students[0].name).to eql 'Melanie'
    end
  end
end
