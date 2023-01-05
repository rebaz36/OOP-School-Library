# encoding: utf-8 # rubocop:disable Style/encoding

require_relative 'person_spec'

class Student < Person
  attr_reader :classroom, :name, :id, :age, :parent_permission

  def initialize(age, classroom, name, parent_permission: false)
    super(age, name, parent_permission)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

describe Student do
  let(:student) { Student.new(25, 'Neeraj Bardwaj', true) }

  it 'Should create a student ' do
    expect(student).to be_instance_of Student
    expect(student).to have_attributes(age: 25)
    expect(student).to have_attributes(name: 'Neeraj Bardwaj')
    expect(student.parent_permission[:parent_permission]).to be true
  end

  it 'Should display a hardcode emoji when call play_hooky' do
    expect(student.play_hooky).to eq '¯\(ツ)/¯'
  end
end
