class GradeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name_of_class, :student_grade, :student_id, :student
  belongs_to :student
end
