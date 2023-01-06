# encoding: utf-8 # rubocop:disable Style/encoding

require_relative 'person_spec'
require_relative '../files'
require_relative '../../student'
require_relative '../../classroom'

describe Student do
  let(:classroom) { Classroom.new('Math') }
  let(:student) { Student.new(25, classroom, 'Neeraj Bardwaj') }

  it 'Should create a student ' do
    expect(student).to be_instance_of Student
    expect(student).to have_attributes(age: 25)
    expect(student).to have_attributes(name: 'Neeraj Bardwaj')
    expect(student).to have_attributes(parent_permission: false)
  end

  it 'Should display a hardcode emoji when call play_hooky' do
    expect(student.play_hooky).to eq '¯\(ツ)/¯'
  end

  context 'When testing classroom method' do
    it 'Should return the correct classroom' do
      expect(student.classroom).to eq(classroom)
    end
  end

  context 'When testing add_students method' do
    it 'Should add a student to the classroom' do
      student2 = Student.new(25, classroom, 'Neeraj Bardwaj')
      expect { classroom.add_students(student2) }.to change { classroom.students.length }.by(1)
    end
  end
end
