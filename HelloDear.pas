PROGRAM HelloDearName(INPUT, OUTPUT);
USES 
  DOS;
VAR
  Name: String;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Name := GetEnv('QUERY_STRING');
  IF Name = '' 
  THEN
    WRITELN('Hello Anonymous!')
  ELSE  
    WRITELN('Hello Dear, ', Copy(Name, 6, Length(Name) - 5));  
END.  
