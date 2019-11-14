package pl.coderslab.christmass.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.christmass.santa.Santa;
import pl.coderslab.christmass.santa.SantaRepository;

import java.util.*;

@Service
public class UserServiceImpl implements UserService {

    private final SantaRepository santaRepository;
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    @Autowired
    public UserServiceImpl(UserRepository userRepository, RoleRepository roleRepository,
                           BCryptPasswordEncoder passwordEncoder, SantaRepository santaRepository) {
        this.passwordEncoder = passwordEncoder;
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.santaRepository = santaRepository;
    }


    @Override
    public User findByUserName(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public void saveUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        Role userRole = roleRepository.findByName("ROLE_USER");
        user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        user.setStatus(Status.UNPAID);
        userRepository.save(user);
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
        setSantaStatus(id);
    }

    public Map<Long, String> userIdUsersSanta() {
        Map<Long, String> userSanta = new HashMap<>();
        for (Santa santa : santaRepository.findAll()) {
            Santa santaGiver = santa;
            User getter = userRepository.getOne(santa.getGettersId());
            userSanta.put(santaGiver.getGiversId(), getter.getFullName());
        }
        return userSanta;
    }

    public List<User> findByStatus(Status status) {
        return userRepository.findByStatus(status);
    }

    public void changeStatus(Status status, Long id) {
        userRepository.changeStatus(status, id);
    }

    public void deleteRoleByUserId(Long id) {
        userRepository.deleteRoleByUserId(id);
    }
}