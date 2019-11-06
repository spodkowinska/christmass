package pl.coderslab.christmass.santa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.christmass.user.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;


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

    public List<Santa> findAllSantas(){
        return santaRepository.findAll();
    }

    public void joinInPairs(List<User> users) {
        Random random = new Random();
        Map<Integer, Long> randomGiver = new HashMap<>();
        Map<Long, Long> giverGetter = new HashMap<>();
        for (User user : users) {
            randomGiver.put(random.nextInt(users.size() + 1), user.getId());
        }
        for (int i = 0; i < randomGiver.size() - 1; i++) {
            giverGetter.put(randomGiver.get(i), randomGiver.get(i + 1));
        }
        giverGetter.put(randomGiver.get(randomGiver.size()), randomGiver.get(0));
        for (Map.Entry<Long, Long> entry : giverGetter.entrySet()) {
            Santa santa = new Santa();
            santa.setGiversId(entry.getValue());
            santa.setGettersId(entry.getKey());
            santaRepository.save(santa);
        }

    }
}





