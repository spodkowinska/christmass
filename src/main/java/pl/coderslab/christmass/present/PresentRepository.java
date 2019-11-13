package pl.coderslab.christmass.present;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PresentRepository extends JpaRepository<Present, Long> {

    List<String>findDescriptionByUserId(Long id);

}
