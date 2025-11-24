       identification division.
       program-id. input-file-program.
       environment division.
       input-output section.
       file-control.
           select person-file assign to "person.txt"
           organization is sequential.
       data division.
       file section.
       fd person-file.
       01 person-record.
           05 person-name pic x(30).
           05 person-age pic 99.
       working-storage section.
       01 ws-name pic x(30).
       01 ws-age pic 99.
       procedure division.
           display "Enter name: ".
           accept ws-name.

           display "Enter age: ".
           accept ws-age.
           
           open extend person-file.

           move ws-name to person-name.
           move ws-age to person-age.
           write person-record.
           close person-file.
           stop run.
