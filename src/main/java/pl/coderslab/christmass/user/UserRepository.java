package pl.coderslab.christmass.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query("select u from User u")
    List<User> findAll();

    @Query("update User u set u.status = 'santa' where id = ?1")
    User setSantaStatus(Long userId);
}
