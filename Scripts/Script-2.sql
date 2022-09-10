		 select LEVEL-1 lv, b.*  -- 최상위 level은 1, 바로 하위 레벨은 2로 표현
		 from board b 
		 WHERE 1=1
		 start with refno = 0
		 connect by prior no = refno
		 order siblings by no DESC;	
		
		SELECT count(*)
		FROM board;
		 
		SELECT *
		FROM(
			 select rownum cnt,level, b.* 
			 from board b 
			 WHERE 1=1
			 start with refno = 0
			 connect by prior no = refno
			 order siblings by no DESC)
		WHERE cnt BETWEEN 1 AND 5;
		 