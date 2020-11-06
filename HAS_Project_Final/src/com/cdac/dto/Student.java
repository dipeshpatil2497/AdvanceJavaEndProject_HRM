package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="has_student")
public class Student {
	
		@Id
		@Column(name= "user_id")
		private int userId;
		@GeneratedValue
		@Column(name = "stud_id")
		private int studId;
		@Column(name = "stud_Fname")
		private String studFname;
		@Column(name = "stud_Lname")
		private String studLname;
		@Column(name = "stud_EmailId")
		private String studEmailId;
		@Column(name = "stud_City")
		private String studcity;
		@Column(name = "stud_Phno")
		private String studPhoneNo;
		@Column(name = "stud_Pincode")
		private String studPinCode;
		@Column(name = "stud_status")
		private String studStatus;
		
		

		public Student() {
			super();
			// TODO Auto-generated constructor stub
			this.studStatus = "wait";
		}

		
		
		public Student(int userId) {
			super();
			this.userId = userId;
		}



		public int getStudId() {
			return studId;
		}

		public void setStudId(int studId) {
			this.studId = studId;
		}

		public String getStudFname() {
			return studFname;
		}

		public void setStudFname(String studFname) {
			this.studFname = studFname;
		}

		public String getStudLname() {
			return studLname;
		}

		public void setStudLname(String studLname) {
			this.studLname = studLname;
		}

		public String getStudEmailId() {
			return studEmailId;
		}

		public void setStudEmailId(String studEmailId) {
			this.studEmailId = studEmailId;
		}

		public String getStudcity() {
			return studcity;
		}

		public void setStudcity(String studcity) {
			this.studcity = studcity;
		}

		public String getStudPhoneNo() {
			return studPhoneNo;
		}

		public void setStudPhoneNo(String studPhoneNo) {
			this.studPhoneNo = studPhoneNo;
		}

		public String getStudPinCode() {
			return studPinCode;
		}

		public void setStudPinCode(String studPinCode) {
			this.studPinCode = studPinCode;
		}
		
		public String getStudStatus() {
			return studStatus;
		}

		public void setStudStatus(String studStatus) {
			this.studStatus = studStatus;
		}

		public int getUserId() {
			return userId;
		}

		public void setUserId(int userId) {
			this.userId = userId;
		}

		@Override
		public String toString() {
			return "Student [studId=" + studId + ", studFname=" + studFname + ", studLname=" + studLname
					+ ", studEmailId=" + studEmailId + ", studcity=" + studcity + ", studPhoneNo=" + studPhoneNo
					+ ", studPinCode=" + studPinCode + ", studStatus=" + studStatus + ", userId=" + userId + "]";
		}
		
		
}
