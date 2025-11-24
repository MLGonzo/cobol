       identification division.
       program-id. comp5-boolean-demo.
       data division.
       working-storage section.
       01 flag pic 9(1) comp-5 value 0.
           88 is-true value 1.
           88 is-false value 0 *.

       01 other-flag pic 9(1) comp-5 value 0.
           88 is-true value 1.
           88 is-false value 0.


       procedure division.
           display flag.
           set is-true in flag to true.
           display "after set true: flag=" flag.
           stop run.
