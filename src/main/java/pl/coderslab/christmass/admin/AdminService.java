//package pl.coderslab.christmass.admin;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import pl.coderslab.christmass.present.PresentRepository;
//import pl.coderslab.christmass.santa.SantaRepository;
//import pl.coderslab.christmass.user.User;
//import pl.coderslab.christmass.user.UserRepository;
//
//import java.util.List;
//
//@Service
//public class AdminService {
//    private UserRepository userRepository;
//    private SantaRepository santaRepository;
//    private PresentRepository presentRepository;
//
//    @Autowired
//    public AdminService(UserRepository userRepository, SantaRepository santaRepository, PresentRepository presentRepository) {
//        this.userRepository = userRepository;
//        this.santaRepository = santaRepository;
//        this.presentRepository = presentRepository;
//    }
//
//    public List<User> findAllUsers(){
//        return userRepository.findAll();
//    }
//}