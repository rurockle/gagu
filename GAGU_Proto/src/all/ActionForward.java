package all;

public class ActionForward {
	
	//포워딩 할 뷰 페이지 주소와 포워딩 방식 공통으로 다루기 위해
	
	private String path; // 
	private boolean isRedirect; // 
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
	
}
