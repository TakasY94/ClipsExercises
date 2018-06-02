(defrule getValues

=>

(printout t "What is your level of Java (high/low)? ")
(bind ?response (read))
(assert (java ?response))

(printout t "What is your level of Android (high/low)? ")
(bind ?response (read))
(assert (android ?response))

(printout t "What is your level of SQL (high/low)? ")
(bind ?response (read))
(assert (sql ?response))

(printout t "Do you prefer work with team or alone? (team/alone)? ")
(bind ?response (read))
(assert (company ?response))

(printout t "What salary do you expect? (low/normal/high)? ")
(bind ?response (read))
(assert (salary ?response)))


(defrule BigBoss
	(and
		(java high)
		(android high)
		(sql high)
		(company team)
		(or (salary high) (salary normal))
	) =>
 (printout t "We decided to consider you as a team leader" crlf) (halt) )

 (defrule AndroidDeveloper
	(and
		(or (java high) (java low) )
		(android high)
		(sql high)
		(company alone)
		(salary normal)
	) =>
 (printout t "We decided to consider you as a android developer" crlf) (halt) )

 (defrule JavaDeveloper
	(and
		(java high)
		(android low)
		(sql high)
		(company alone)
		(salary normal)
	) =>
 (printout t "We decided to consider you as a java developer" crlf) (halt) )

 (defrule Janitor
	(and
		(java low)
		(android low)
		(sql low)
		(company alone)
		(salary low)
	) =>
 (printout t "We decided to consider you as a Janitor" crlf) (halt) )

 (defrule JuniorDeveloper
	(and
		(java low)
		(android low)
		(sql low)
		(company team)
		(salary low)
	) =>
 (printout t "We decided to consider you as a Junior developer" crlf) (halt) )

 (defrule NotEmployee
	
	=>
 (printout t "We decided not to consider your CV. Sorry" crlf) )

