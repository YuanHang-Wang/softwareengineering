package kunkun.service;


import kunkun.entity.User;

import javax.lang.model.element.NestingKind;

public interface LoginService {
    public User login(String username,String password);//重写
}
