package claw0ed.service;

import claw0ed.model.SungJukVO;

public class SungJukService {

	public int getTotal(SungJukVO sj) {
		int tot = sj.getKor() + sj.getEng() + sj.getMat();
		sj.setTot(tot);
		
		return tot;
	}
	
	public double getAverage(SungJukVO sj) {
		double avg = (double)sj.getTot() / 3;
		sj.setAvrg(avg);
		
		return avg;
	}

	public String getGrade(SungJukVO sj) {
		String grd = "가";
		
		/* switch( (int) avg / 10 ) {
		case 10: 
		case 9:
			grd = "수";
			break;
		case 8:
			grd = "우";
			break;
		case 7:
			grd = "미";
			break;
		case 6:
			grd = "양";
			break;
		} */
		
		return grd;
	}
	
}
