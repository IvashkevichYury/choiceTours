package by.choiceTours.service;

import by.choiceTours.entity.MyUser;
import by.choiceTours.repository.MyUserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MyUserService {

    private final MyUserRepository userRepository;

    public MyUser createUser(MyUser user) {
        return userRepository.save(user);
    }

    public List<MyUser> getAll() {
        return userRepository.findAll();
    }
}