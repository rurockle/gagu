package member.vo;

import java.sql.Date;

public class MemberBean {
	
	private int member_idx;	
	private String member_id;
	private String member_password;
	private String member_name;
	private String member_gender;
	private String member_birth;
	private String member_zip;
	private String member_address;
	private String member_detail_address;
	private String member_tel;
	private String member_email;
	private int member_point;
	private String member_grade;
	private Date member_date;
	
	
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_zip() {
		return member_zip;
	}
	public void setMember_zip(String member_zip) {
		this.member_zip = member_zip;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public String getMember_detail_address() {
		return member_detail_address;
	}
	public void setMember_detail_address(String member_detail_address) {
		this.member_detail_address = member_detail_address;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public int getMember_point() {
		return member_point;
	}
	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}
	public String getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(String member_grade) {
		this.member_grade = member_grade;
	}
	public Date getMember_date() {
		return member_date;
	}
	public void setMember_date(Date member_date) {
		this.member_date = member_date;
	}
	
	
	@Override
	public String toString() {
		return "MemberBean [member_idx=" + member_idx + ", member_id=" + member_id + ", member_password="
				+ member_password + ", member_name=" + member_name + ", member_gender=" + member_gender
				+ ", member_birth=" + member_birth + ", member_zip=" + member_zip + ", member_address=" + member_address
				+ ", member_detail_address=" + member_detail_address + ", member_tel=" + member_tel + ", member_email="
				+ member_email + ", member_point=" + member_point + ", member_grade=" + member_grade + ", member_date="
				+ member_date + "]";
	}
	
	
	
	
}
