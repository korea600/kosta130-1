package encFilter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncFilter implements Filter{
	private String encType;
	
	public void init(FilterConfig config) throws ServletException {
		encType = config.getInitParameter("encType");	// web.xml에 'param-value'으로 정의된 값 얻어오기
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		if(encType!=null) request.setCharacterEncoding(encType);
		else request.setCharacterEncoding("UTF-8");
		chain.doFilter(request, response);
	}
	
	public void destroy() {

	}
}
