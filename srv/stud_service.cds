using {student.db as model} from '../db/schema';

service StudentAPIservice {
    entity StudentSet as projection on model.Students;
    entity Authors    as projection on model.Authors;
}
/*
service CourseAPIservice {
    entity CourseSet as projection on model.Courses;
}*/
