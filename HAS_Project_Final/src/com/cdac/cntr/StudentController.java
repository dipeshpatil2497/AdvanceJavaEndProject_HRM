package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.Student;
import com.cdac.dto.User;
import com.cdac.service.AdminService;
import com.cdac.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/prep_stud_form.htm", method = RequestMethod.GET)
	public String prepStudForm(ModelMap map, HttpSession session) {

		boolean b = UserController.routeProtected(session);
		if (b) {

			int userid = ((User) session.getAttribute("user")).getUserId();
			System.out.println(userid);
			boolean student = studentService.findStudent(userid);
			if (student == false) {
				map.put("student", new Student());
				return "stud_form";
			} else {
				session.setAttribute("student", student);
				return "home_stud";
			}

		} else {
			return "index";
		}
	}

	@RequestMapping(value = "/applyHostel.htm", method = RequestMethod.POST)
	public String newStudRecord(Student student, ModelMap map, HttpSession session) {
		boolean b = UserController.routeProtected(session);
		if (b) {
			int user_id = ((User) session.getAttribute("user")).getUserId();

			student.setUserId(user_id);
			studentService.newStudRecord(student);
			return "home_stud";
		} else {
			return "index";
		}
	}

	@RequestMapping(value = "/check_status2.htm", method = RequestMethod.GET)
	public String checkStudStatus(ModelMap map, HttpSession session) {
		boolean b = UserController.routeProtected(session);
		if (b) {
			int userId = ((User) session.getAttribute("user")).getUserId();
			Student student = studentService.checkStud(userId);
			map.put("student", student);
			session.setAttribute("studstatus", student);
			return "check_status";
		} else {
			return "index";
		}
	}

	@RequestMapping(value = "/gotoPayment_Page.htm", method = RequestMethod.GET)
	public String gotoPaymentPage(HttpSession session, ModelMap map) {

			Student student = (Student) session.getAttribute("studstatus");
			String studstatus = student.getStudStatus();
			Student student2 = new Student();
			student2 = student;
			String cfm = "confirm";
			String cfm2 = "C&P";

			if (studstatus.equals(cfm)) {
				System.out.println("inside confirm");
//			map.put("studentConfirm", student);
				return "payment_page";
			} else if (studstatus.equals(cfm2)) {
				session.setAttribute("student2", student2);
				return "home_stud";
			} else {

				int cut = 10;
				session.setAttribute("count", cut);
				session.setAttribute("student1", student2);
				return "home_stud";
			}
		

	}

	@RequestMapping(value = "/con_and_paid.htm", method = RequestMethod.GET)
	public String chgStatusCndP(ModelMap map, HttpSession session) {
		boolean b = UserController.routeProtected(session);
		if (b) {

			Student studObj = (Student) session.getAttribute("studstatus");

			studObj.setStudStatus("C&P");
			adminService.modityConStud(studObj);
			return "home_stud";
		} else {
			return "index";
		}
	}

}
