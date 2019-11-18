package pl.coderslab.christmass.santa;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SantaRepository extends JpaRepository<Santa, Long> {

    List<Santa> findAll();

    Santa findByGettersId(Long id);
}
