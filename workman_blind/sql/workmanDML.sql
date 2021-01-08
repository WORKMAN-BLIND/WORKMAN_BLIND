insert into company values('cu충정로프랑스점','restplease00','부산광역시 금정구 장전2동 금강로279번길 81-14','010-9280-7637','편의점');
insert into company values('한솥도시락(부산대북문점)','기업소개글1','부산광역시 금정구 장전2동 금강로279번길 81-14','010-9280-7637');
insert into company values('GS25대구역자이점','기업소개글2','대구광역시 중구 서성로 99 104동 상가 141호 대구역센트럴자이','010-8920-8402');
insert into company values('이마트 천안서북점 이니스프리','기업소개글3','서북구 삼성대로 20 천안서북점 이니스프리','010-5326-4292');

-- member 테이블 회원 저장
insert into member values('kwon0329','restplease00','권희성','010-5324-6678');
insert into member values('wook999','chukchuk123','장종욱','wook999@gmail.com');
insert into member values('moon77','lovecat522','장문희','moon77@naver.com');

-- parttimelist 테이블 알바리스트 저장
insert into parttimelist values(208252,'cu충정로프랑스점','3시간',8590,'6개월이상','용돈벌이');
insert into parttimelist values(208253,'GS25대구역자이점 ',1,9,'채용마감','3시간전','장기');
insert into parttimelist values(208254,'이마트 천안서북점 이니스프리',2,3,'채용중','3시간전','시간제');

-- parttimeeval 테이블 알바평가게시글 저장
insert into parttimeeval values(208252,'kwon0329','cu충정로프랑스점','칼퇴가능','안밀려요','식사제공','깐깐해요','손님이많아요');
insert into parttimeeval values(208252,'kwon0330','근로계약서 작성','많이 줘요','화장실 깨끗','친절해요','일 많아요','경험2');
insert into parttimeeval values(208253,'moon77','계속 서있어야함','최저도 안줘요','교통 편리','화가 많아요','힘쓰는일 많아요','경험3');

commit;