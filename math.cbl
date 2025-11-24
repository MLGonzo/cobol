       identification division.
       program-id. math.
       author. gonzo.
       environment division.
       data division.
       working-storage section.
           01 variable-a pic 9(3) value 2.
           01 variable-b pic 9(3) value 4.
           01 variable-c pic 9(3).
       procedure division.
           compute variable-c = variable-a + variable-b
           display variable-c.
           stop run.
