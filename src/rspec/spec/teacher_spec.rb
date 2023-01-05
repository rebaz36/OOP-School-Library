require_relative 'person_spec'

class Teacher < Person
  attr_accessor :specialization, :id

  def initialization(age, name, specialization: true)
    super(age, name, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

describe Teacher do
  context 'When test the Teacher class' do
    it 'Creates a Teacher object' do
      teacher = Teacher.new(28, 'Christina Miller', 'Science')
      expect(teacher).to have_attributes(age: 28)
      expect(teacher).to have_attributes(name: 'Christina Miller')
      expect(teacher).to have_attributes(specialization: 'Science')
    end
  end
end
