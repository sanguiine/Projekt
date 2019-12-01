package projektKompetencyjny;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "uczy")
public class Uczy {

    @Column(name = "id_nauczyciela")
    private int id_nauczyciela;

    @Column(name = "id_przedmiotu")
    private int id_przedmiotu;

    @Column(name = "id_klasy")
    private int id_klasy;

    @Column(name = "ile_godzin")
    private int ile_godzin;

    public int getId_nauczyciela() {
        return id_nauczyciela;
    }

    public void setId_nauczyciela(int id_nauczyciela) {
        this.id_nauczyciela = id_nauczyciela;
    }

    public int getId_przedmiotu() {
        return id_przedmiotu;
    }

    public void setId_przedmiotu(int id_przedmiotu) {
        this.id_przedmiotu = id_przedmiotu;
    }

    public int getId_klasy() {
        return id_klasy;
    }

    public void setId_klasy(int id_klasy) {
        this.id_klasy = id_klasy;
    }

    public int getIle_godzin() {
        return ile_godzin;
    }

    public void setIle_godzin(int ile_godzin) {
        this.ile_godzin = ile_godzin;
    }
}
