package cn.yuhao.experiment.utils;

import cn.yuhao.experiment.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author tfj 2014-8-1
 */
public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object arg2) throws Exception {
		// 如果是登录页面则放行
		String uri = request.getRequestURI();
		User user =  (User) request.getSession().getAttribute("user");
		User admin =  (User) request.getSession().getAttribute("admin");
		System.out.println("拦截器:"+uri);
		if (uri.contains("/admin/")) {
			if (admin == null) {
				request.getRequestDispatcher("/admin/login.jsp").forward(
						request, response);
				return false;
			} else {
				return true;
			}
		}else if(uri.contains("/user/")){
			if(user==null){
				request.getRequestDispatcher("/Index/login.action").forward(request, response);
				return false;
			}else{
				return true;
			}
		}

		return true;
	}

}