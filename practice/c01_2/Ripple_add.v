`include "FA.v" // 전가산기 모듈 파일 포함

// 4bit 리플 캐리 가산기 모듈 정의
module ripple_add;
    // 리플 캐리 가산기 만들기 위해 내부에 1bit 전가산기 모듈 4개 파생
    // 같은 모듈에서 파생했지만 인스턴스 이름 이용하여 구분가능
    fa fa0();
    fa fa1();
    fa fa2();
    fa fa3();

endmodule