S1 = 'ELELEbDCaceabenbCeELELEbDCaceabeCbaabCDEgFEDfEDCeDCbeEeELEbDC';
BS1 = [1 1 1 1 1 1 1 1 3 1 1 1 3 1 1 1 3 1 1 1 1 1 1 1 1 1 3 1 1 1 3 1 1 1 3 3 1 1 1 3 1 1 1 3 1 1 1 3 1 1 1 3 1 1 1 1 1 1 1 1 1];
S2 = 'aCCgCcaCDFDadggaedggfaCCgCCaCDFEDFDCadggfCgbffagfgaCEEDCDEEDCD';
BS2 = [0.5 0.5 1 0.5 0.5 1 0.25 0.25 0.25 0.25 1 1 0.5 0.5 1 1 1 0.5 0.5 1 2 0.5 0.5 1 0.5 0.5 1 0.25 0.25 0.25 0.25 1 1 1 1 1 1 0.5 0.5 1 2 2 0.7 0.5 0.5 1 0.25 0.25 0.25 0.25 1 1 2 0.25 0.25 0.25 0.25 2 0.25 0.25 0.25 0.25];
S3 = 'eefggfedccdeeddeefggfedccdedcc';
BS3 = [1 1 1 1 1 1 1 1 1 1 1 1 2 0.7 2 1 1 1 1 1 1 1 1 1 1 1 1 2 0.7 1];
S4 = 'ccggaagffeeddcggffeedggffeedccggaagffeeddc';
BS4 = [1 1 1 1 1 1 2 1 1 1 1 1 1 2 1 1 1 1 1 1 2 1 1 1 1 1 1 2 1 1 1 1 1 1 2 1 1 1 1 1 1 2];
S5 = 'dgggabbbagabgbbCDDCbCDbggabbagabgddgggabbbagabg';
BS5 = [0.7 1 0.7 1 0.7 2 1 0.7 1 0.7 1 0.7 2 2 1 0.7 2 2 1 0.7 1 0.7 2 2 1 0.7 2 2 1 0.7 1 0.7 1 1 0.7 1 0.7 1 0.7 2 1 0.7 1 0.7 1 0.7 2];
S6 = 'edcdeeedddeggedcdeeeeddedcc';
BS6 = [1 1 1 1 1 1 2 1 1 2 1 1 2 1 1 1 1 1 1 1 1 1 1 1 2 1 1];
S7 = 'aagee   fffffffedd  aaagee   fffffffeddc ddeggggfededdcccddeggggfe';
BS7 = [0.5 0.5 0.7 1 2 1 1 1 0.5 0.5 0.25 0.25 0.25 0.25 0.7 1 2 1 1 0.5 0.5 0.7 1 2 1 1 1 0.5 0.5 0.25 0.25 0.25 0.25 0.7 1 2 1 2 1 0.7 1 2 0.7 0.5 0.5 0.7 1 0.7 1 0.5 0.5 1 0.5 0.5 1 1 1 0.7 1 1 1 0.7 0.5 0.5 0.7 1];
S8 = 'abbbbbbggabbbabbaggeebbCbgCbggAbaabaCaEDCbagmede';
BS8 = [0.5 0.5 1 0.5 0.5 1 1 1 2 0.5 0.5 1 0.5 0.5 1 0.25 0.25 0.25 0.25 2 0.8 1 1 2 1 1 2 1 0.5 0.5 2 1 1 2 1 1 3 1 2 1 1 2 1 1 2 1 1 2];
S9 = 'cdececedeffedfefgegegfgaagfaa';
BS9 = [2 1 2 1 1 1 2 2 1 0.5 0.5 0.5 0.5 3 2 1 2 1 1 1 3 2 1 0.5 0.5 0.5 0.5 3 .5];
S10 = 'gggdeedbbaagdgggdeedbbaagddgggddggggggggggggggggggdeedbbaag';
BS10 = [1 1 1 1 1 1 3 1 1 1 1 3 1 1 1 1 1 1 1 3 1 1 1 1 3 0.5 0.5 1 1 1 0.5 0.5 1 1 2 0.5 0.5 1 0.5 0.5 1 0.25 0.25 0.25 0.25 1 1 1 1 1 1 1 1 3 1 1 1 1 3];


notes = {'c','k','e','l','d','f','m','g','n','a','o','b','C','K','D','L','E','F','M','G','N','A','O','B',' '};
freqs = [261 277 293 311 329 349 369 391 415 440 466 493 523 554 587 622 659 698 739 783 830 880 932 988 0];
led=[255, 0 , 0 ; 255, 127, 0; 255, 255, 0	; 127, 255, 0; 0, 255, 0; 0, 255, 127; 0, 255, 255; 0, 127, 255; 0, 0, 255; 75, 0, 130; 148, 0, 211	; 127,0, 255; 255,0,255; 255,0,127; 255,127,127; 255,255,127;148, 0, 211	; 127,0, 255; 255,0,255; 255,0,127; 255,127,127; 255,255,127; 0 0 127; 3 10 180; 24 182 139];	
LED=led.*5/255;