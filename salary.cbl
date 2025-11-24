       identification division.
       program-id. salary.
       author Gonzo.
      * this program accumulates salaries
       environment division.
       input-output section.
       file-control.
           select salary-file assign to da02
           organization is sequential.
       data division.
       file section.
       fd salary-file.
       01 salary-record.
           03 record-type pic X.
           03 salary pic 9(6).
       working-storage section.
       01 salary-total pic 9(8).
       procedure division.
       aa-start.
           open input salary-file.
           move zeroes to salary-total.
       bb-read.
           read salary-file at end go to cc-end.
           add salary to salary-total.
           go to bb-read.
       cc-end.
           display salary-total.
           close salary-file.
           stop run.
