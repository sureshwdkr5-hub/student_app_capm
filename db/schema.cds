namespace student.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

type nameType: String(50);

entity Students : cuid {
    name    : nameType;
    address : String;
    email   : nameType;
    mobile  : String;
    age     : Integer;
    gender  : String;

}

entity Courses : cuid, managed {
    name     : nameType;
    cost     : Decimal(10, 2);
    trainer  : nameType;
    duration : Integer;
}

