package pl.coderslab.christmass.present;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.christmass.user.User;
import pl.coderslab.christmass.user.UserRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class PresentService {


    private PresentRepository presentRepository;
    private UserRepository userRepository;

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

    public List<Present> findAll() {
        return this.presentRepository.findAll();
    }

    public HashMap<Long, String> presentsById(){
        List<Present> presents=presentRepository.findAll();
        HashMap<Long, String>presentsById= new HashMap<>();
        presents.stream().forEach(p -> presentsById.put(p.getUser().getId(), p.getDescription()));
        return presentsById;
    }
    public void deleteByUserId(Long userId){
        presentRepository.deleteByUserId(userId);
    }
}
