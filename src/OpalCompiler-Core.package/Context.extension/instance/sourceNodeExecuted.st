*OpalCompiler-Core
sourceNodeExecuted
	"When down in the stack, I return the node that executed"
	^ (method sourceNodeForPC: self previousPcWithCorrectMapping) 
	"Uncomment the following once the pc->AST mapping is fixed"
	"^ (method sourceNodeForPC: (previousPc ifNil: [ self startpc ])) "