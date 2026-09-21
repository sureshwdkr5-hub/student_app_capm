namespace student.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

type nameType : String(50);

entity Students : cuid {
    name    : nameType;
    address : String;
    email   : nameType;
    mobile  : String;
    age     : Integer;
    gender  : String;
    //courses : Composition of many Course
}

entity Courses : cuid, managed {
    name     : nameType;
    cost     : Decimal(10, 2);
    trainer  : nameType;
    duration : Integer;
}

entity Books : cuid {
    name     : String;
    title    : String;
    PubDate  : String;
    authorID : String;
    author   : Association to Authors; //managed association
}

entity Authors : cuid {
    name  : String;
    books : Composition of many Books
                on books.author = $self;
}
