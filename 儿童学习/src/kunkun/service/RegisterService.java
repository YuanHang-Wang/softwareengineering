package kunkun.service;

import kunkun.entity.User;

public interface RegisterService {
    public User register(String username, String password,String sex);
}
