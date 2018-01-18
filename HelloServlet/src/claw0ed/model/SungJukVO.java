package claw0ed.model;

public class SungJukVO {
	private String name;
	private int kor;
	private int eng;
	private int mat;
	private int tot;
	private double avrg;
	private String grd;
	
	public SungJukVO() {
	}

	public SungJukVO(String name, int kor, int eng, int mat) {
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
	}
	
//	public SungJukVO(String name, int kor, int eng, int mat, int tot, double avrg, String grd) {
//		this.name = name;
//		this.kor = kor;
//		this.eng = eng;
//		this.mat = mat;
//		this.tot = tot;
//		this.avrg = avrg;
//		this.grd = grd;
//	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMat() {
		return mat;
	}

	public void setMat(int mat) {
		this.mat = mat;
	}

	public int getTot() {
		// tot = kor + eng + mat;
		return tot;
	}

	public void setTot(int tot) {
		this.tot = tot;
	}

	public double getAvrg() {
		// avrg = (double) tot / 3;
		return avrg;
	}

	public void setAvrg(double avrg) {
		this.avrg = avrg;
	}

	public String getGrd() {
		
		/* String grd = "가";
		switch( (int) avrg / 10 ) {
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

	public void setGrd(String grd) {
		this.grd = grd;
	}

	@Override
	public String toString() {
		String fmt = "SungJukVO [name=%s, kor=%d, eng=%d, mat=%d, tot=%d, avrg=%.1f, grd=%s]";
		return String.format(fmt, name, kor, eng, mat, tot, avrg, grd);
//		return "SungJukVO [name=" + name + ", kor=" + kor + ", eng=" + eng + ", mat=" + mat + ", tot=" + tot + ", avrg="
//				+ avrg + ", grd=" + grd + "]";
	}
	
}