package kunkun.repository;

import kunkun.entity.User;

public interface UserRepository {
    public User login(String username,String password);
}
