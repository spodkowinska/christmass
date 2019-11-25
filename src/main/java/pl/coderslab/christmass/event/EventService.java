package pl.coderslab.christmass.event;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventService {
    private EventRepository eventRepository;

    public EventService(EventRepository eventRepository) {
        this.eventRepository = eventRepository;
    }

    public Long idByHashedId(String hashedId){
        return eventRepository.findByHashedId(hashedId).getId();
    }


    public Event eventByHashedId (String hashedId) {
        return eventRepository.findByHashedId(hashedId);
    }
    public List<Event> findAll(){
        return eventRepository.findAll();
    }

    public Event findById(Long id){return eventRepository.findFirstById(id);}

}
