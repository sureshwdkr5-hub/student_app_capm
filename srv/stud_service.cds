using {student.db as model} from '../db/schema';

service StudentAPIservice {
    entity StudentSet as projection on model.Students;
}

service CourseAPIservice {
    entity CourseSet as projection on model.Courses;
}
