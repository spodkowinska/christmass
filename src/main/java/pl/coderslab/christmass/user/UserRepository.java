package pl.coderslab.christmass.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query("SELECT u FROM User u")
    List<User> findAll();

    @Transactional
    @Modifying
    @Query("UPDATE User u SET u.status ='SANTA' WHERE u.id = ?1")
    void setSantaStatus(Long userId);

    @Transactional
    @Modifying
    @Query("UPDATE User u SET u.status = :status WHERE u.id = :userId")
    void changeStatus(Status status, Long userId);

    List<User> findByStatus(Status status);

    User findByUsername(String username);

    @Transactional
    @Modifying
    @Query(value = "DELETE FROM user_role WHERE user_id = ?1", nativeQuery = true)
    void deleteRoleByUserId(Long Id);
}
