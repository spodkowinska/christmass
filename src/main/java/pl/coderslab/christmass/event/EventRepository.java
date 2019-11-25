package pl.coderslab.christmass.event;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EventRepository extends JpaRepository <Event, Long> {

    Event findByHashedId(String hashedId);
    Event findFirstById(Long id);
    List<Event> findAll();
}
