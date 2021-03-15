package kunkun.service.Impl;

import kunkun.entity.User;
import kunkun.repository.Impl.UserRepositoryImpl;
import kunkun.repository.UserRepository;
import kunkun.service.RegisterService;

public class RegisterServiceImpl implements RegisterService {
    private UserRepository userRepository = new UserRepositoryImpl();
    @Override
    public User register(String username, String password,String sex) {
        return userRepository.login(username,password);
    }
}
