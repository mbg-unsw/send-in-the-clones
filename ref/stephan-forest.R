# Forest plot of selected results from Stephan 202610.1038/s43856-026-01796-z

library(tibble)
library(forestploter)

x <- tribble (
~` `, ~`RR (95% CI)`, ~`  `, ~hr, ~lci, ~uci,
"Cardiovascular death", "", "", NA, NA, NA,
"    Clone-censor-weight", "1.08 (1.01-1.16)", "", 1.08, 1.01, 1.16,
"    TOPCAT RCT", "0.74 (0.57-0.97)", "", 0.74, 0.57, 0.97,
"Non-CV death (-ve control)", "", "", NA, NA, NA,
"    Clone-censor-weight", "1.10 (1.02-1.19)", "", 1.10, 1.02, 1.19
)

pdf("stephan-forest.pdf", width=8.27, height=5.85, onefile=FALSE) # A5R full page

tm <- forest_theme(base_size = 11, base_family="Helvetica",
        vertline_lwd = 0.5)

x$`  ` <- rep("                     ", 5)

p1 <- forestploter::forest(x[,c(1:3)],
             est=x$hr, lower=x$lci, upper=x$uci,
             ci_column=3,
             theme=tm,
	     ref_line=1,
             xlim=c(0.5,1.5),
             ticks_at=c(0.5,1,1.5))

plot(p1)

dev.off()
