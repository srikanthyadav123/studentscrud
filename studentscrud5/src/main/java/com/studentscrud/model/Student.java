package com.studentscrud.model;

import javax.persistence.*;

@Entity
@Table(name = "students")
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Column(name = "name")
	private String name;

	@Column(name = "branch")
	private String branch;

	@Column(name = "email")
	private String email;

	public Student() {

	}

	public Student(String name, String branch, String email) {
		this.name = name;
		this.branch = branch;
		this.email = email;
	}

	public long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "student [id=" + id + ", name=" + name + ", branch=" + branch + ", email=" + email + "]";
	}
}
