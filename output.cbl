       identification division.
       program-id. read-person.

       environment division.
       input-output section.
       file-control.
           select person-file assign to 'person.txt'
           organization is sequential.
       data division.
       file section.
       fd person-file.
       01 person-record.
           05 person-name pic x(30).
           05 person-age pic 99.
       working-storage section.
       01 eof-flag pic x value 'N'.
           88 eof value 'Y'.
           88 not-eof value 'N'.

       procedure division.
           open input person-file.

           perform until eof
           read person-file
           at end
           set eof in eof-flag to true
           not at end
           display 'Name: ' person-name
           display 'Age: ' person-age
           end-read
           end-perform
           close person-file.
           stop run.
