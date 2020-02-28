PROGRAM PaulRevere(INPUT, OUTPUT); 
USES
   DOS;
VAR
  Lanterns: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Lanterns := GetEnv('QUERY_STRING');
  IF Lanterns[10] >= '1'
  THEN
    IF Lanterns[10] <= '3'
    THEN
      WRITE('The British are coming by ');
      IF Lanterns[10] = '1'
      THEN
        WRITELN('land')
      ELSE
       IF Lanterns[10] = '2'
       THEN
         WRITELN('sea')
       ELSE
          IF Lanterns[10] = '3'
          THEN
            WRITELN('air')
          ELSE
            WRITE('The North Church shows only''', Copy(Lanterns, 10, LENGTH(Lanterns) - 9), '''');
END.
