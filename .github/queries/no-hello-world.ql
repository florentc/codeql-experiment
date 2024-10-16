/**
 * @name Avoid Hello World
 * @description This query detects calls to `println` with the argument "Hello World!".
 * @kind problem
 * @problem.severity warning
 * @id java/avoid-hello-world
 * @tags style
 */

import java

from MethodCall ma
where
  ma.getMethod().hasName("println") and
  ma.getArgument(0).(StringLiteral).getValue() = "Hello World!"
select ma, "Avoid printing 'Hello World!' to standard output."
