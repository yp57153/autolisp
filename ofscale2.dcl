ofscale2 :dialog 
{label = "比例设定";
	:button { 
		label ="msltscale";
		key="1";
		action ="(setvar \"msltscale\" 1)";
	}
	:button { 
		label ="psltscale";
		key="2";
		action ="(setvar \"psltscale\" 1)";
	}
	:button { 
		label ="绘图比例";
		action="(setvar \"dimlfac\" (/ 1.0 (getint \"input draw sc:\")))";//bug
		key="3";
	}
	:button { 
		label ="打印比例";
		action="(setvar \"dimscale\" (getint \"input plot sc:\"))";//bug
		key="4";
	}
	ok_cancel;
}
