package pl.coderslab.christmass.santa;

import javax.persistence.*;

@Entity
@Table(name ="santas")
public class Santa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long giversId;

    private Long gettersId;

    public Long getId() { return id;}

    public void setId(Long id) {
        this.id = id;
    }

    public Long getGiversId() {
        return giversId;
    }

    public void setGiversId(Long giversId) {
        this.giversId = giversId;
    }

    public Long getGettersId() {
        return gettersId;
    }

    public void setGettersId(Long gettersId) {
        this.gettersId = gettersId;
    }
}
