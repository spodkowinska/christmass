package pl.coderslab.christmass.user;

import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
public class CurrentUser extends User {

    private final pl.coderslab.christmass.user.User user;
    public CurrentUser(String username, String password,
                       Collection<? extends GrantedAuthority> authorities,
                       pl.coderslab.christmass.user.User user) {
        super(username, password, authorities);
        this.user = user;
    }
    public pl.coderslab.christmass.user.User getUser() {return user;}
}