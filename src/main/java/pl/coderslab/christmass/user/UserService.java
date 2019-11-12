package pl.coderslab.christmass.user;

public interface UserService {

    User findByUserName(String name);

    void saveUser(User user);
}