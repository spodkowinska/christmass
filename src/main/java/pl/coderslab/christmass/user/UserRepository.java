package pl.coderslab.christmass.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query("select u from User u")
    List<User> findAll();

    @Transactional
    @Modifying
    @Query("UPDATE User u SET u.status ='santa' where u.id = ?1")
    void setSantaStatus(Long userId);

    @Transactional
    @Modifying
    @Query("UPDATE User u SET u.status = :status where u.id = :userId")
    void changeStatus(String status, Long userId);

    List<User> findByStatus(String status);
}
