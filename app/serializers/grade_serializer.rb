class GradeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name_of_class, :student_grade, :student_id
end
