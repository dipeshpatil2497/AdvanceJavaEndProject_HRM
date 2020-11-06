package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Student;
import com.cdac.dto.User;
import com.cdac.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

//	Redirect to Admin Profile Page
	@RequestMapping(value = "/about_admin.htm", method = RequestMethod.GET)
	public String adminProfile(ModelMap map, HttpSession session) {
		boolean b = UserController.routeProtected(session);
		if (b) {
			return "admin_profile";
		} else {
			return "index";
		}
	}

//	Sending Form for New Admin   
	@RequestMapping(value = "/add_new_admin.htm", method = RequestMethod.GET)
	public String addNewAdmin(ModelMap map, HttpSession session) {
		boolean b = UserController.routeProtected(session);
		if (b) {
			map.put("user", new User());
			return "new_admin_form";
		} else {
			return "index";
		}
	}

//	Adding record of new admin and going back to home_admin page
	@RequestMapping(value = "/add_new_admin.htm", method = RequestMethod.POST)
	public String register(User user, ModelMap map, HttpSession session) {
		user.setUserType("admin");
		adminService.insertNewAdmin(user);
		return "admin_profile";

	}

//	Send Update form for updating Admin Profile
	@RequestMapping(value = "/update_Myadmin.htm", method = RequestMethod.GET)
	public String updateMyAdmin(ModelMap map, HttpSession session) {
		boolean b = UserController.routeProtected(session);
		if (b) {
			int userId = ((User) session.getAttribute("user")).getUserId();
			User user = adminService.findUser(userId);
			map.put("user", user);
			return "update_admin_form";
		} else {
			return "index";
		}
	}

//	updating admin profile
	@RequestMapping(value = "/update_admin.htm", method = RequestMethod.POST)
	public String updateAdmin(User user, HttpSession session) {
		int userId = ((User) session.getAttribute("user")).getUserId();
		user.setUserId(userId);
		user.setUserType("admin");
		adminService.modifyUser(user);
		return "admin_profile";
	}

//	Send delete form for deleting Admin Profile
	@RequestMapping(value = "/delete_Myadmin.htm", method = RequestMethod.GET)
	public String deleteMyAdmin(HttpSession session) {
		boolean b = UserController.routeProtected(session);
		if (b) {
			return "delete_admin_form";
		} else {
			return "index";
		}
	}

//	deleting admin profile
	@RequestMapping(value = "/delete_admin.htm", method = RequestMethod.POST)
	public String deleteAdmin(@RequestParam int userid) {

		adminService.removeUser(userid);
		return "admin_profile";
	}

	@RequestMapping(value = "/req_stud_list.htm", method = RequestMethod.GET)
	public String reqStudList(ModelMap map, HttpSession session) {
		String status = "wait";
		boolean b = UserController.routeProtected(session);
		if (b) {
			List<Student> li = adminService.getReqStud(status);
			map.put("reqlist", li);
			session.setAttribute("reqstudL", li);
			return "reqStudList_page";
		} else {
			return "index";
		}
	}

	@RequestMapping(value = "/con_stud_req.htm", method = RequestMethod.GET)
	public String confirmstudreq(@RequestParam int studId, HttpSession session, ModelMap map) {
		List<Student> list = (List<Student>) session.getAttribute("reqstudL");
		Student studObj = null;
		for (Student s : list) {
			if (studId == s.getStudId()) {
				studObj = s;
			}
		}

		studObj.setStudStatus("confirm");
		adminService.modityConStud(studObj);

		String status = "wait";

		List<Student> li = adminService.getReqStud(status);
		map.put("reqlist", li);

		return "reqStudList_page";

	}


	@RequestMapping(value = "/confstud_list.htm", method = RequestMethod.GET)
	public String confStudList(ModelMap map, HttpSession session) {
		String status = "C&P";
		boolean b = UserController.routeProtected(session);
		if (b) {
		List<Student> confli = adminService.getReqStud(status);
		int confStudCount = confli.size();
		System.out.println(confStudCount);
		map.put("conflist", confli);
		session.setAttribute("confCount", confStudCount);
		return "confStudList_page";
		}else {
			return "index";
		}
	}
	
	@RequestMapping(value = "/rej_stud_req.htm", method = RequestMethod.GET)
	public String rejstudreq(@RequestParam int studId, ModelMap map) {

		adminService.rejStudReq(studId);

		String status = "wait";

		List<Student> li = adminService.getReqStud(status);
		map.put("reqlist", li);

		return "reqStudList_page";

	}

}
