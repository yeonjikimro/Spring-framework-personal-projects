

drop table tbl_songList;
create table tbl_songList (
s_seq	VARCHAR(30)		Primary key,
song	VARCHAR(100)	Not null	,
musician	VARCHAR(100)	Not null,	
address	VARCHAR(100),
checkbox TINYINT(1) default 0
);

select a.seq, a.checkbox, a.username, b.song, b.musician, b.address From tbl_check as a
		LEFT join tbl_songList as b ON a.seq = b.s_seq;

select * from tbl_songList;

use mytodoDB;

select * from tbl_check;
drop table tbl_check;


select * from tbl_tableList;


create view tbl_tableList as
select b.m_seq, a.s_seq,
a.song, a.musician, b.mood, a.address, a.checkbox From tbl_songList as a
LEFT join tbl_moodList as b ON a.s_seq = b.seq;


create table tbl_check (
	seq VARCHAR(20),
    checkbox TINYINT(1) default 0,
    username VARCHAR (100),
	song VARCHAR (100),
	musician VARCHAR(50)
);


insert into tbl_songList (s_seq, song, musician, address) values
('S001',	'교향곡 3번 3악장',	'브람스',	'https://www.youtube.com/watch?v=DTEevBe41is'),
('S002',	'세레나데',	'슈베르트',	'https://www.youtube.com/watch?v=YG4E1X93ppo'),
('S003',	'마왕',	'슈베르트',	'https://www.youtube.com/watch?v=zqHogu_xqSs'),
('S004',	'송어',	'슈베르트',	'https://www.youtube.com/watch?v=nCRN374KOos'),
('S005',	'모든 영혼을 위한 기도',	'슈베르트',	'https://www.youtube.com/watch?v=WF1H4iEssbY'),
('S006',	'백조의 호수',	'차이코프스키',	'https://www.youtube.com/watch?v=FZWimJt3qVY'),
('S007',	'피아노 협주곡 1번',	'차이코프스키',	'https://www.youtube.com/watch?v=AJuFMTHDl1Y'),
('S008',	'호두까끼인형 : 설탕 자두 요정의 춤',	'차이코프스키','https://www.youtube.com/watch?v=S-J09JXG-hE'),
('S009',	'호두까끼 인형:꽃의 왈츠',	'차이코프스키','	https://www.youtube.com/watch?v=tklNHXmfZjY'),
('S010',	'사라방드',	'헨델', 'https://www.youtube.com/watch?v=VQvgR0QyXLg'),
('S011',	'하프 협주곡 Bb 장조',	'헨델',	'https://www.youtube.com/watch?v=q0_nV2GQqMk'),
('S012',	'울게하소서',	'헨델',	'https://www.youtube.com/watch?v=qsyksmNteSQ'),
('S013',	'라르고',	'헨델',	'https://www.youtube.com/watch?v=oRzca9LdmuI'),
('S014',	'시바여왕의 도착',	'헨델',	'https://www.youtube.com/watch?v=zQ6Nd_b2VCI'),
('S015',	'교향곡 제2번 3악장',	'슈만',	'https://www.youtube.com/watch?v=ulRFdubvN9o'),
('S016',	'트로이메라이',	'슈만',	'https://www.youtube.com/watch?v=ywXBCKa8bVY&t=7s'),
('S017',	'아베크 변주곡',	'슈만',	'https://www.youtube.com/watch?v=Gf5JV_hwUoM'),
('S018',	'어린이 정경',	'슈만',	'https://www.youtube.com/watch?v=JhBw2iTF06k'),
('S019',	'빗방울 전주곡',	'쇼팽',	'https://www.youtube.com/watch?v=1g7d1DKTfgU&t=876s'),
('S020',	'녹턴 제1번 B Flat',	'쇼팽',	'https://www.youtube.com/watch?v=rrzTz8RPMs4'),
('S021',	'녹턴 9악장 2번',	'쇼팽', 'https://www.youtube.com/watch?v=ts01BEr51iQ'),
('S022',	'프렐류드 4번',	'쇼팽',	'https://www.youtube.com/watch?v=R-ESEyc9-pI'),
('S023',	'흑건',	'쇼팽',	'https://www.youtube.com/watch?v=Vpebr16OFCA'),
('S024',	'이별의 노래',	'쇼팽',	'https://www.youtube.com/watch?v=xgzzedM1bHY'),
('S025',	'노래의 날개 위에',	'멘델스존',	'https://www.youtube.com/watch?v=XaJb76IlhEI'),
('S026',	'봄의 노래',	'멘델스존',	'https://www.youtube.com/watch?v=UBJZx71sVr4'),
('S027',	'아라베스크 1번',	'드뷔시',	'https://www.youtube.com/watch?v=lZI5FiiS2qY'),
('S028',	'꿈',	'드뷔시',	'https://www.youtube.com/watch?v=EDebuY3oxOA'),
('S029',	'달빛',	'드뷔시',	'https://www.youtube.com/watch?v=n2sjvLnTcIg'),
('S030',	'Consolation no.3',	'리스트',	'https://www.youtube.com/watch?v=iWYdl5OkvSk'),
('S031',	'마제파',	'리스트',	'https://www.youtube.com/watch?v=J3t5L15uV5s'),
('S032',	'사랑의 꿈',	'리스트',	'https://www.youtube.com/watch?v=5sVNk-fSKRQ'),
('S033',	'사계 봄 1악장',	'비발디',	'https://www.youtube.com/watch?v=jDcW_mmBb14'),
('S034',	'사계 여름 3악장',	'비발디',	'https://www.youtube.com/watch?v=woXKwPsoYjM'),
('S035',	'사계 가을 1악장',	'비발디',	'https://www.youtube.com/watch?v=CIlBPZ1UvHo'),
('S036',	'겨울 1악장',	'비발디',	'https://www.youtube.com/watch?v=Q-PKOp8ygd4'),
('S037',	'피아노협주곡 2번 2악장',	'라흐마니노프','https://www.youtube.com/watch?v=T8NVb2Q6o4g'),
('S038',	'보칼리제',	'라흐마니노프',	'https://www.youtube.com/watch?v=-as2-V1RXw4'),
('S039',	'피아노 협주곡 4번',	'라흐마니노프',	'https://www.youtube.com/watch?v=LZBYpRhSews'),
('S040',	'파가니니 주제에 의한 광시곡',	'라흐마니노프', 'https://www.youtube.com/watch?v=QdSjO20Wx78'),	
('S042',	'미뉴엣',	'바흐',	'https://www.youtube.com/watch?v=NRqeLKWt-mI'),
('S043',	'G선상의 아리아',	'바흐',	'https://www.youtube.com/watch?v=0fOJ_DQ60jw'),
('S044',	'아베마리아',	'바흐',	'https://www.youtube.com/watch?v=NfYW99xEF6I'),
('S045',	'프렐류드 1번',	'바흐',	'https://www.youtube.com/watch?v=f6Gy3tKoDro'),
('S046',	'아리오소',	'바흐',	'https://www.youtube.com/watch?v=FXNbL5PlLwk'),
('S047',	'라캄파넬라',	'파가니니',	'https://www.youtube.com/watch?v=AqZIW5co3go'),
('S048',	'카프리스 24번',	'파가니니',	'https://www.youtube.com/watch?v=ecsQDuAgJF4'),
('S049',	'바이올린과 기타를 위한 소나타',	'파가니니',	'https://www.youtube.com/watch?v=Dd6OzorWX5M'),
('S050',	'비창 3악장',	'베토벤',	'https://www.youtube.com/watch?v=DNouyWhngck'),
('S051',	'교향곡 9번 합창',	'베토벤',	'https://www.youtube.com/watch?v=tuFeGKIlAVs'),
('S052',	'월광 소나타',	'베토벤',	'https://www.youtube.com/watch?v=hTXJkPb64_8'),
('S053',	'피아노 소나타 12번',	'베토벤',	'https://www.youtube.com/watch?v=cU4Rc3cXx9g'),
('S054',	'비창 2악장',	'베토벤', 'https://www.youtube.com/watch?v=2jMdRxeZEkQ'),
('S055',	'운명 교향곡 1악장',	'베토벤',	'https://www.youtube.com/watch?v=UgQarIwXVEA'),
('S056',	'레퀴엠 라크리모사',	'모차르트',	'https://www.youtube.com/watch?v=iwdk9WakfZ0'),
('S057',	'아이네클라이네나흐트뮤직',	'모차르트',	'https://www.youtube.com/watch?v=LpcjzxoGlI4'),
('S058',	'피아노 소나타 3번',	'모차르트',	'https://www.youtube.com/watch?v=IqJGJKlG4jw'),
('S059',	'터키행진곡',	'모차르트',	'https://www.youtube.com/watch?v=bylDKmpAHnk'),
('S060',	'피아노 협주곡 21번 C장조 2악장',	'모차르트',	'https://www.youtube.com/watch?v=427eJBuYRoU'),
('S061',	'동물의 사육제 : 백조',	'생상스',	'https://www.youtube.com/watch?v=3UNF3e5mgTc'),
('S062',	'짐노페디 1번',	'에릭시티',	'https://www.youtube.com/watch?v=Lq9mIkLa8Fc'),
('S063',	'짐노페디 2번',	'에릭시티',	'https://www.youtube.com/watch?v=maxnSpgqSfQ');