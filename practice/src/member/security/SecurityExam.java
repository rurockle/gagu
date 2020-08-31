package member.security;

public class SecurityExam {

	public static void main(String[] args) throws Exception {
		SecurityUtil securityUtil = new SecurityUtil();
		String rtn1 = securityUtil.encryptSHA256("hg741111#!");
		/*test*/System.err.println(">"+rtn1);
		
		String rtn2 = securityUtil.encryptSHA256("hg741111#!");
		/*test*/System.err.println(">"+rtn2);
				
		if(rtn1.equals(rtn2)) {
			/*test*/System.err.println(">>>Equals!");
		}
		
	}

}
