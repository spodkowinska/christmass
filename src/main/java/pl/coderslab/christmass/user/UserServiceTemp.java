package pl.coderslab.christmass.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.christmass.santa.Santa;
import pl.coderslab.christmass.santa.SantaRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceTemp {


    private UserRepository userRepository;
    private SantaRepository santaRepository;

    @Autowired
    public UserServiceTemp(UserRepository userRepository, SantaRepository santaRepository) {
        this.userRepository = userRepository;
        this.santaRepository = santaRepository;
    }

    public void create(User user) {
        this.userRepository.save(user);
    }

    public void update(User user) {
        this.userRepository.save(user);
    }

    public User findById(Long id) {
        return this.userRepository.findById(id).orElse(null);
    }

    public void delete(Long id) {
        this.userRepository.deleteById(id);
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public void setSantaStatus(Long id) {
        userRepository.setSantaStatus(id);
    }

    public Map<Long, String> userIdUsersSanta() {
        Map<Long, String> userSanta = new HashMap<>();
        List<Long> ids=new ArrayList<>();
        for (User user:userRepository.findAll()) {
        Santa santa = santaRepository.getByGiversId(user.getId());
        User getter = userRepository.getOne(santa.getGettersId());
        userSanta.put(user.getId(), getter.getFullName());
        }
        return userSanta;
    }

    public List <User> findByStatus(String status){
        return userRepository.findByStatus(status);
    }

    public void changeStatus(String status, Long id){
        userRepository.changeStatus(status, id);
    }
}
