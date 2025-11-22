# Zork I 소스 코드 컬렉션

Zork I은 1980년에 Marc Blank, Dave Lebling, Bruce Daniels, Tim Anderson이 작성하고 Infocom이 발행한 인터랙티브 픽션 게임입니다.

Zork I에 대한 추가 정보:

* [Wikipedia](https://en.wikipedia.org/wiki/Zork_I)
* [The Digital Antiquarian](https://www.filfre.net/2012/01/selling-zork/)
* [The Interactive Fiction Database](https://ifdb.tads.org/viewgame?id=0dbnusxunq7fw5ro)
* [The Infocom Gallery](http://gallery.guetech.org/zork1/zork1.html)
* [IFWiki](http://www.ifwiki.org/index.php/Zork_I)

__이 저장소는 무엇인가요?__

이 저장소는 Infocom 게임 "Zork I"의 소스 코드 디렉토리로, 게임 제작에 사용되거나 폐기된 다양한 파일들을 포함하고 있습니다. 이 코드는 ZIL(Zork Implementation Language)로 작성되었으며, ZIL은 MDL(Muddle)을 리팩토링한 것이고, MDL은 MIT 학생과 교직원이 만든 LISP의 한 방언입니다.

소스 코드는 익명으로 기여되었으며 Infocom 개발 시스템이 종료될 당시의 스냅샷을 나타냅니다. 현재로서는 공식 버전과 비교할 방법이 없으므로 정규(canonical)로 간주되어야 하지만, 반드시 프로덕션용 정확한 소스 코드 배열은 아닐 수 있습니다.

__이 저장소의 내용에 대한 기본 정보__

현재 이 저장소의 소스 코드를 공식 Infocom 컴파일러를 사용하여 최종 "Z-machine Interpreter Program" (ZIP) 파일로 컴파일할 수 있는 알려진 방법이 없다는 점이 중요합니다. [ZILF](http://zilf.io)라는 사용자 유지 관리 컴파일러가 있으며, 이 컴파일러는 약간의 문제만 있을 뿐 이러한 .ZIL 파일을 성공적으로 컴파일하는 것으로 나타났습니다. 일부 Infocom 소스 코드 저장소에는 .ZIP 파일이 있지만, 이는 Infocom 드라이브의 최종 종료 시점에 있었던 것이며 이를 생성하는 방법은 현재 유실되었습니다.

역사를 통틀어 Infocom은 TOPS20 메인프레임과 컴파일러(ZILCH)를 사용하여 언어 파일을 생성하고 편집했습니다. 이 저장소는 Infocom의 소스 코드 디렉토리 아카이브의 미러이지만 원래 릴리스된 것과는 수년의 차이가 있을 수 있습니다.

일반적으로 Infocom 게임은 이전 Infocom 소스 코드를 가져와 디렉토리를 복사하고 현재 구현자가 필요로 하는 방식으로 게임이 작동할 때까지 변경하는 방식으로 만들어졌습니다. 따라서 구조는 게임마다 이어지는 경향이 있었으며 코드의 실제 기능을 정확하게 반영할 수도 있고 그렇지 않을 수도 있습니다.

또한 "Z-Machine"의 여러 버전이 있으며 Infocom의 초기와 10년 후 사이에 코드가 눈에 띄게 변경되었습니다. 그래픽, 사운드 및 메모리 확장의 추가는 모두 시간이 지남에 따라 천천히 구현됩니다.

__이 저장소의 목적은 무엇인가요__

이 컬렉션은 교육, 토론 및 역사적 연구를 위한 것으로, 연구자와 학생들이 이러한 인터랙티브 픽션 게임을 위해 코드가 어떻게 만들어졌는지, 시스템이 입력과 처리를 어떻게 다루었는지 연구할 수 있도록 합니다.

연구자들은 이 소스 코드의 정보와 Infocom 및 그 많은 혁신적인 직원들의 역사에 대한 발견을 공유하도록 권장됩니다.
