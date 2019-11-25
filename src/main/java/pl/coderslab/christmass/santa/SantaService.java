package pl.coderslab.christmass.santa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.christmass.event.EventRepository;
import pl.coderslab.christmass.user.User;
import pl.coderslab.christmass.user.UserRepository;

import java.util.*;


@Service
public class SantaService {

    private SantaRepository santaRepository;
    private EventRepository eventRepository;
    private UserRepository userRepository;

    @Autowired
    public SantaService(SantaRepository santaRepository, EventRepository eventRepository, UserRepository userRepository) {
        this.santaRepository = santaRepository;
        this.eventRepository = eventRepository;
        this.userRepository = userRepository;
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

    public List<Santa> findAllSantas() {
        return santaRepository.findAll();
    }

    public void joinInPairs(List<User> users,Long eventId) {
        List<User>usersFromEvent=new ArrayList<>();
        for(User user : users){
            if(user.getEvent().contains(eventRepository.findFirstById(eventId))){
                usersFromEvent.add(user);
            }
        }
        Random random = new Random();
        int randomInt = random.nextInt(usersFromEvent.size()-1)+1;
        System.out.println(randomInt);
        Integer counter = 0;
        Map<Integer, Long> randomGiver = new HashMap<>();
        Map<Long, Long> giverGetter = new HashMap<>();
        for (User user : usersFromEvent) {
            randomGiver.put(counter, user.getId());
            counter++;
        }
            for (int i = 0; i < randomGiver.size(); i++) {
                if (i + randomInt >= randomGiver.size()) {
                    giverGetter.put(randomGiver.get(i), randomGiver.get(i + randomInt - randomGiver.size()));
                }else{
                giverGetter.put(randomGiver.get(i), randomGiver.get(i + randomInt));
                }
            }
        for (Map.Entry<Long, Long> entry : giverGetter.entrySet()) {
            Santa santa = new Santa();
            santa.setGiversId(entry.getValue());
            santa.setGettersId(entry.getKey());
            santaRepository.save(santa);
        }

    }
    public Santa findByGettersId(Long gettersId){
       return santaRepository.findByGettersId(gettersId);
    }
}





