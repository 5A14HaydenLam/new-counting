program WordCounter;

var
  passage: string;
  numWords: integer;
  upper_limit: integer;
  lower_limit: integer;
procedure CountWords(passage: string; var numWords: integer);
var
  i: integer;
  isWord: boolean;
begin
  numWords := 0;
  isWord := False;

  for i := 1 to Length(passage) do
  begin
    if passage[i] in ['A'..'Z', 'a'..'z'] then
    begin
      if not isWord then
      begin
        Inc(numWords);
        isWord := True;
      end;
    end
    else
      isWord := False;
  end;
end;

begin
  // Main program
  writeln('Please enter your upper limit: ');
  readln(upper_limit);
  writeln('Please enter your lower limit: ');
  readln(lower_limit);
  writeln('Please enter a passage:');
  readln(passage);

  CountWords(passage, numWords);

  writeln('Number of words:', numWords);
  if (numWords < lower_limit) then
   writeln('According to your own standard, your sentence is too short. Please try adding more adjectives or phrases to make it longer.')
   else if (numWords > upper_limit) then
   writeln('According to your own standard, your sentence is too lengthy. Please try spliting the sentence into halves according to its meaning and content.')
   else
    writeln('According to your own standard, your sentence is fine.')
end.
