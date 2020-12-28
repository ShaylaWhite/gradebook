Backend 

-Models-

Students 

has_many : grades


\\\\Grades \\\\\\\

belongs_to :students 


Routes 

GET /grades #index

POST /grades #create

DELETE /grades #delete


Models - Front End

Student 
   -name

   Grades
   -name-of_class
   -student_grade
   -student_id

render json data & template
constructor instatiates basicaully the blueprint


Features

 list all grades
 
 \\  GET/FETCH THEN DISPALY ON INDEX ROUTE

 \\ EVENT TRIGGERED FROM -- ON LOAD 

 \\ FROM domcontent loaded

 \\ get to index action


 create grade

\\post data for grade to be created in the back end and update grade list

\\ EVENT TRIGGERED FROM - SUBMIT 

\\ TRIGGERD FROM DOM 

\\ POST TO CREATE ACTION 


DELETE GRADE

\\ DELETE GRADE

\\ DELETE BUTTON

\\ TRIIGERED FROM DOM LOAD 

\\ ROUTE DELETE 



