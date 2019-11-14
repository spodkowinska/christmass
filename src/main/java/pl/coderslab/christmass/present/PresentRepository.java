package pl.coderslab.christmass.present;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PresentRepository extends JpaRepository<Present, Long> {

    List<String>findDescriptionByUserId(Long id);

    void deleteByUserId(Long id);

    Present findByUserId(Long userId);
}
