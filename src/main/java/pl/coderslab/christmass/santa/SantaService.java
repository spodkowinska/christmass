package pl.coderslab.christmass.santa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class SantaService {


    private SantaRepository santaRepository;

    @Autowired
    public SantaService(SantaRepository santaRepository) {
        this.santaRepository = santaRepository;
    }

    public void create(Santa santa) {
        this.santaRepository.save(santa);
    }

    public void update(Santa santa) {
        this.santaRepository.save(santa);
    }

    public Santa findById(Long id) {
        return this.santaRepository.findById(id).orElse(null);
    }

    public void delete(Long id) {
        this.santaRepository.deleteById(id);
    }

}
