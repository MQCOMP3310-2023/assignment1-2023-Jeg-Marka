/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */


import java

from MethodAccess call, Method method
where
    call.getMethod().hasName("printStackTrace") and
    call.isthrown() and
    call.getArguments().isEmpty()

select call, "This is a call that uses printStackTrace() on a throwable with no arguments"
