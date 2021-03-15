package kunkun.service.Impl;

import kunkun.entity.User;
import kunkun.repository.Impl.UserRepositoryImpl;
import kunkun.repository.UserRepository;
import kunkun.service.LoginService;

public class LoginServiceImpl implements LoginService {

    private UserRepository userRepository = new UserRepositoryImpl();
    @Override
    public User login(String username, String password) {
        return userRepository.login(username,password);
    }

}
