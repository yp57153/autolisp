ofscale2 :dialog 
{label = "�����趨";
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
		label ="��ͼ����";
		action="(setvar \"dimlfac\" (/ 1.0 (getint \"input draw sc:\")))";//bug
		key="3";
	}
	:button { 
		label ="��ӡ����";
		action="(setvar \"dimscale\" (getint \"input plot sc:\"))";//bug
		key="4";
	}
	ok_cancel;
}