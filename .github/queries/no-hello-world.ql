import java

from MethodCall ma
  where
    ma.getMethod().hasName("println") and
    ma.getArgument(0).(StringLiteral).getValue() = "Hello World!"
select ma, "Avoid printing 'Hello World!' to standard output."
