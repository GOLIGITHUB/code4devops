package com.code4devops.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

@Entity
@Table(name="candidateDetails")
public class CandidateDetails {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int candidateId;
	
	@NotEmpty
	@Pattern(regexp = "^[\\p{L} .'-]+$",message="please enter your good name")
	@Column(name = "candidate_name", nullable = false)
	private String candidateName;
	
	@NotEmpty
	@Email(message = "Please enter your email address")
	@Pattern(regexp = "^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$")
	@Column(name = "candidate_Email", nullable = false)
	private String candidateEmail;
	
	@NotEmpty
	@Pattern(regexp = "^[\\p{L} .'-]+$",message="please enter valid technology name")
	@Column(name = "candidate_subject", nullable = false)
	private String candidateSubject;
	
	@NotEmpty
	@Pattern(regexp = "^[\\p{L} .'-]+$",message="please enter valid comment")
	@Column(name = "candidate_comment", nullable = false)
	private String candidateComment;
	
	@NotEmpty
	@Pattern(regexp = "[0-9]{10}",message = "please enter valid mobile number")
	@Column(name = "candidate_contact", nullable = false)
	private String candidateContactDetail;

public String getCandidateContactDetail() {
	return candidateContactDetail;
}
public void setCandidateContactDetail(String candidateContactDetail) {
	this.candidateContactDetail = candidateContactDetail;
}
public int getCandidateId() {
	return candidateId;
}
public void setCandidateId(int candidateId) {
	this.candidateId = candidateId;
}
public String getCandidateName() {
	return candidateName;
}
public void setCandidateName(String candidateName) {
	this.candidateName = candidateName;
}
public String getCandidateEmail() {
	return candidateEmail;
}
public void setCandidateEmail(String candidateEmail) {
	this.candidateEmail = candidateEmail;
}
public String getCandidateSubject() {
	return candidateSubject;
}
public void setCandidateSubject(String candidateSubject) {
	this.candidateSubject = candidateSubject;
}
public String getCandidateComment() {
	return candidateComment;
}
public void setCandidateComment(String candidateComment) {
	this.candidateComment = candidateComment;
}
@Override
public String toString() {
	return "CandidateDetails [candidateId=" + candidateId + ", candidateName=" + candidateName + ", candidateEmail="
			+ candidateEmail + ", candidateSubject=" + candidateSubject + ", candidateComment=" + candidateComment
			+ ", candidateContactDetail=" + candidateContactDetail + "]";
}



}
