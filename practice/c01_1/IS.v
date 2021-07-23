// 모듈 정의된 파일 포함시키기
`include "MEM.v"
`include "SC.v"
`include "Xbar.v"

// Interconnect switch(IS) 모듈 정의
module is;

// is 모듈 내에서 다른 모듈 사용하기 위하여 모듈 인스턴스 파생
// 모듈명 인스턴스명(터미널)
mem mem1();
sc sc1();
xbar xbar1();

endmodule