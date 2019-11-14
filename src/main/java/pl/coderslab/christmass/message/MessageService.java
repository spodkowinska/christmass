package pl.coderslab.christmass.message;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.christmass.present.Present;

@Service
@Transactional
public class MessageService {

    private MessageRepository messageRepository;

    @Autowired
    public MessageService(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }
    public void create(Message message) {
        this.messageRepository.save(message);
    }

    public void update(Message message) {
        this.messageRepository.save(message);
    }

    public Message findById(Long id) {
        return this.messageRepository.findById(id).orElse(null);
    }

    public void delete(Long id) {
        this.messageRepository.deleteById(id);
    }



}
