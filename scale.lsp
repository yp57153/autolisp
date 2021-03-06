;defun sc£¨
;action_tile "1"
(defun sc_w1(/ dcl_id s1 s2 s3 s4 s5 s6)
  (setq dcl_id  (load_dialog  "ofscale.dcl"));
  (new_dialog "ofscale" dcl_id);begin to initialize the ofscale dialog
  (action_tile "1" "(setvar \"msltscale\" 0)")
  (action_tile "2" "(setvar \"psltscale\" 0)")
  (action_tile "3" "(setq s1 1)") ;get sc of draw
  (action_tile "4" "(setq s2 1)");get sc of plot
  (action_tile "5" "(setq s3 1)") ;set annotation scale
  (action_tile "6" "(setq s4 1)");get drawing sc
(action_tile "7" "(setq s5 1)"); to restore annotation scale
(action_tile "8" "(setq s6 1)");to restore drawing scale
	
  (if (= 1  (start_dialog )) 
    (progn (if (= 1 s1)  (setq *ds* (getreal "input draw ds:")));;set draw scale
	   (if(= 1 s2)   (setq *ps* (getreal "input plot ps:")));set plot scale
	   (if(= 1 s3)   (progn (setvar "textsize" (/ 1.0 *ps*))(setvar "mleaderscale" (/ 1 *ps*))(setvar "dimscale" (/ 1 *ps*))));annotation scale 
	   (if(= 1 s4) (progn (setvar "dimlfac"(/ 1 *ds*))(setvar "celtscale" *ds*)));setdrawing sc
	   (if(= 1 s5)   (progn(setvar "textsize" 1)(setvar "mleaderscale" 1)(setvar "dimscale" 1))) ;restore annotation scal
	   (if(= 1 s6)   (progn (setvar "dimlfac" 1);(setvar "ltscale"1)
				(setvar "celtscale" 1)));restore drawing sc
	   (setvar "modemacro" (strcat "ds:" (rtos *ds*) "   ""ps:" (rtos *ps*)"   ""ts:"(rtos (getvar "textsize"))"   ""mls:"(rtos (getvar "mleaderscale"))"   ""dims:" (rtos (getvar "dimscale")) "   ""dimlfac:" (rtos (getvar "dimlfac"))"   ""clts:" (rtos (getvar "celtscale"))))
    )
  )
  )
