package projektKompetencyjny;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "nauczyciele")
public class Nauczyciel {

    @Id
    @Column(name = "id_nauczyciela")
    @GeneratedValue(generator = "incrementor")
    @GenericGenerator(name = "incrementor", strategy = "increment")
    private int id;

    @Column(name = "imię")
    private String imie;

    @Column(name = "nazwisko")
    private String nazwisko;

    @Column(name = "email")
    private String email;

    @Column(name = "hasło")
    private String haslo;

    @Column(name = "id_przedmiotu")
    private int id_przedmiotu;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "uczy",
            joinColumns = {@JoinColumn(name = "id_nauczyciela")},
            inverseJoinColumns = {@JoinColumn(name = "id_klasy")}
    )
    private List<Klasa> klasy;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHaslo() {
        return haslo;
    }

    public void setHaslo(String haslo) {
        this.haslo = haslo;
    }

    @Override
    public String toString() {
        return "Nauczyciel{" +
                "id=" + id +
                ", imie='" + imie + '\'' +
                ", nazwisko='" + nazwisko + '\'' +
                ", email='" + email + '\'' +
                ", haslo='" + haslo + '\'' +
                '}';
    }

    public List<Klasa> getKlasy() {
        return klasy;
    }

    public void setKlasy(List<Klasa> klasy) {
        this.klasy = klasy;
    }
}
