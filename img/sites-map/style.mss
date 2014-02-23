@font_reg: "Cisalpin LT Std Regular";

// colors
@marble:#7E8796;
@water: #ddeeff;
@land: #ffffdd;
@line: #226688;
@cheerios: #D9BE65;

@gradient0:#ffffe6;
@gradient1:#d4e7da;
@gradient2:#aad0cf;
@gradient3:#7fb9c5;
@gradient4:#55a1ba;
@gradient5:#2a8aaf;
@gradient6:#0073a5;

Map {
  background-color: #b8dee6;
}

#countries {
  ::outline {
    line-color: #85c5d4;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}

// data
#sites {
  [analyzed=0]{
    marker-width:5;
  	marker-fill:#D9BE65;
  	marker-line-color:#D9BE65;
  }
  [analyzed=1]{
	text-name:[site_name];
    text-face-name:@font_reg;
    text-allow-overlap:true;
  	text-dy:4;
    text-size:6;
    marker-width:7;
  	marker-fill:#618785;
  	marker-line-color:#871032;
    marker-allow-overlap:true;
  }
}

#cities {
  text-face-name:@font_reg;
  text-name:[site_name];
  text-dx:-7;
  text-size:6;
  marker-width:6;
  marker-fill:#871032;
  marker-line-color:#f45;
  marker-allow-overlap:true;
}

// boundaries
#subnational-bound {
  line-width:1;
  line-color:#106587;
}

#bound-province {
  [name='Volturino']{polygon-fill:@gradient1}
  [name='Troia']{polygon-fill:@gradient1}
  [name='Manfredonia']{polygon-fill:@gradient1}
  [name='Ascoli Satriano']{polygon-fill:@gradient2}
  [name='Foggia']{polygon-fill:@gradient2}
  [name='Cerignola']{polygon-fill:@gradient4}
  [name='Lucera']{polygon-fill:@gradient5}
  line-color:#594;
  line-width:0.2;
  line-dasharray: 4, 4;
  //polygon-opacity:1;
}

#bound-reg[short_name='FG'] {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:0.3;
  polygon-fill:@cheerios;
}

#bound-reg {
  line-color:#594;
  line-width:0.5;
  //polygon-opacity:0.3;
  polygon-fill:#fff;
}

#bound-reg::bigoutline {
  line-color: #594;
  line-width: 10;
  line-opacity:0.1;
  line-join: round;
  line-cap: round;
}