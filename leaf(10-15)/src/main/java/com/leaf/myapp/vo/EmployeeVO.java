package com.leaf.myapp.vo;

public class EmployeeVO {
	private int emp_num;
	private String emp_posi; // 직급
	private String emp_regdate; // 입사일		
	private int dept_num; // 부서코드
	private String dept_name; // 부서명
	private String emp_status; // 재직여부
	
	
	private String nullid; // 가입은 되어있지만 사원등록은 안한 아이디
	private String userid;
	private String userpwd;
	private String username;
	private String birth;
	private int membership;
	private String regdate; //회원등록일
	private String addr;
	private String auth;
	
	// 연락처
	private String tel;
	private String tel1;
	private String tel2;
	private String tel3;
	
	// 이메일
	private String email;
	private String emailid; // @앞
	private String domain; // @뒤
	
	
	public int getEmp_num() {
		return emp_num;
	}
	public void setEmp_num(int emp_num) {
		this.emp_num = emp_num;
	}
	public String getEmp_posi() {
		return emp_posi;
	}
	public void setEmp_posi(String emp_posi) {
		this.emp_posi = emp_posi;
	}
	public String getEmp_regdate() {
		return emp_regdate;
	}
	public void setEmp_regdate(String emp_regdate) {
		this.emp_regdate = emp_regdate;
	}
	public int getDept_num() {
		return dept_num;
	}
	public void setDept_num(int dept_num) {
		this.dept_num = dept_num;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}	
	
	
	public String getNullid() {
		return nullid;
	}
	public void setNullid(String nullid) {
		this.nullid = nullid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getMembership() {
		return membership;
	}
	public void setMembership(int membership) {
		this.membership = membership;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getTel() {
		tel = tel1+"-"+tel2+"-"+tel3;
		return tel;
	}
	public void setTel(String tel) {		
		this.tel = tel;
		
		String[] AllTel = tel.split("-");
		this.tel1 = AllTel[0];
		this.tel2 = AllTel[1];
		this.tel3 = AllTel[2];
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getEmail() {
		email = emailid+"@"+domain;
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
		
		if(email!=null) {
			String[] mail = email.split("@");
			this.emailid = mail[0];
			this.domain = mail[1];
		}
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getEmp_status() {
		return emp_status;
	}
	public void setEmp_status(String emp_status) {
		this.emp_status = emp_status;
	}
	
	
	
	
	
}
