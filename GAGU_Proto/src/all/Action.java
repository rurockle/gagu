package all;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface Action {
	
	// 서로 다른 클래스들에 대한 요청을
	// execute 메서드를 통해서. 다형성 활용 action 인터페이스 설계
	
	ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;

}