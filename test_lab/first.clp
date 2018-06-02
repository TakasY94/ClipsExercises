(deftemplate Svetofor 
	(slot color))
(deffacts Svetoforfacts
	(crazy yes)
	(Svetofor(color red)))
(defrule Go
=>
(printout t "Go" crlf))
(defrule Stop
	(or
		(crazy yes)
		(Svetofor(color red))
	) =>
 (printout t "Stop" crlf)
)