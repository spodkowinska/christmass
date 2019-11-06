package pl.coderslab.christmass.present;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PresentService {


    private PresentRepository presentRepository;

    @Autowired
    public PresentService(PresentRepository presentRepository) {
        this.presentRepository = presentRepository;
    }

    public void create(Present present) {
        this.presentRepository.save(present);
    }

    public void update(Present present) {
        this.presentRepository.save(present);
    }

    public Present findById(Long id) {
        return this.presentRepository.findById(id).orElse(null);
    }

    public void delete(Long id) {
        this.presentRepository.deleteById(id);
    }


}
