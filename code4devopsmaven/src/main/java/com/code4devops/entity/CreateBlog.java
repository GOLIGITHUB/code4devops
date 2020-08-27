package com.code4devops.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="createblog")
public class CreateBlog {
	
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="create_blog_id",length=10,nullable=false)
private int create_blog_id;

@Column(name="blog_title",length=500,nullable=false)
private String blog_title;

@Column(name="blog_url",length=500,nullable=false)
private String blog_url;

@Column(name="blog_description",length=500,nullable=false)
private String blog_description;

@Column(name="blog_datetime",length=500,nullable=false)
private String blog_datetime;

@Column(name="blog_flag",length=500,nullable=false)
private String blog_flag;


@Column(name="blog_image",length=500,nullable=false)
private String blog_image;

public CreateBlog() {}

public CreateBlog(String blog_title, String blog_url, String blog_description, String blog_datetime, String blog_flag,String blog_image) {
	this.blog_title = blog_title;
	this.blog_url = blog_url;
	this.blog_description = blog_description;
	this.blog_datetime = blog_datetime;
	this.blog_flag = blog_flag;
	this.blog_image=blog_image;
}

public int getCreate_blog_id() {
	return create_blog_id;
}

public void setCreate_blog_id(int create_blog_id) {
	this.create_blog_id = create_blog_id;
}

public String getBlog_title() {
	return blog_title;
}

public void setBlog_title(String blog_title) {
	this.blog_title = blog_title;
}

public String getBlog_url() {
	return blog_url;
}

public void setBlog_url(String blog_url) {
	this.blog_url = blog_url;
}

public String getBlog_description() {
	return blog_description;
}

public void setBlog_description(String blog_description) {
	this.blog_description = blog_description;
}

public String getBlog_datetime() {
	return blog_datetime;
}

public void setBlog_datetime(String blog_datetime) {
	this.blog_datetime = blog_datetime;
}

public String getBlog_flag() {
	return blog_flag;
}

public void setBlog_flag(String blog_flag) {
	this.blog_flag = blog_flag;
}


public String getBlog_image() {
	return blog_image;
}

public void setBlog_image(String blog_image) {
	this.blog_image = blog_image;
}

@Override
public String toString() {
	return create_blog_id + "|" + blog_title + "|" + blog_url +"|" + blog_description + "|" + blog_datetime + "|" + blog_flag+"|"+blog_image;
}





}
