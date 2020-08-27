package com.code4devops.service;

import java.util.List;

import com.code4devops.entity.CreateBlog;

public interface CreateBlogService {
public abstract List<CreateBlog> getListOfBlog() throws RuntimeException;
}
