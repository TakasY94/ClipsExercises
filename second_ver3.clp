(defrule getValues

=>

(printout t "What is level of water (high/low)? ")
(bind ?response (read))
(assert (level ?response))

(printout t "Lot of rain lately? (yes/no)? ")
(bind ?response (read))
(assert (rain ?response))

(printout t "Lot of snow in the mountain? (yes/no)? ")
(bind ?response (read))
(assert (snow ?response))

(printout t "What kind of wheather now? (warm/cold)? ")
(bind ?response (read))
(assert (weather ?response)))

(defrule badCase
	(and
		(level high)
		(rain yes)
		(snow yes)
		(weather warm)
	) =>
 (printout t "Flood will happen. Get ready ASAP!" crlf) )
(defrule GoodCase
	(or
		(level low)
		(rain no)
		(snow no)
		(weather cold)
	) =>
(printout t "Flood will not happen. Calm down." crlf) )
	
