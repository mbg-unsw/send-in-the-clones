dag {
bb="-3.102,-3.472,3.287,3.546"
"Attendance rates" [pos="0.504,1.049"]
"COVID-19 infection" [pos="2.755,-0.629"]
"Public-health restrictions" [pos="-0.468,-1.005"]
Mobility [pos="-1.652,0.154"]
Pandemic [exposure,pos="-2.827,-2.374"]
Prescribing [outcome,pos="2.463,3.072"]
URTI [pos="-1.262,2.961"]
"Attendance rates" -> Prescribing
"COVID-19 infection" -> "Attendance rates"
"COVID-19 infection" -> Prescribing
"Public-health restrictions" -> Mobility
Mobility -> "Attendance rates"
Mobility -> URTI
Pandemic -> "COVID-19 infection"
Pandemic -> "Public-health restrictions"
Pandemic -> Mobility
URTI -> "Attendance rates"
URTI -> Prescribing
}
