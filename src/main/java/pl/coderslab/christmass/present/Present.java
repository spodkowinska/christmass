package pl.coderslab.christmass.present;

import pl.coderslab.christmass.user.User;

import javax.persistence.*;

@Entity
@Table(name="presents" )
public class Present {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String description;

    @ManyToOne
    private User user;

    public Long getId() { return id; }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
