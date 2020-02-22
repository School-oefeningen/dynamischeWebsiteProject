package model.db;
import java.util.ArrayList;
import model.domain.Taak;

public class TakenDB {
    private ArrayList<Taak> takenlijst;

    public TakenDB() {
        takenlijst = new ArrayList<>();
    }

    public ArrayList<Taak> getTakenlijst() {
        return takenlijst;
    }

    public void voegTaakToe(Taak t) {
        if (t == null) throw new IllegalArgumentException("Taak bestaat niet");
        takenlijst.add(t);
    }

    public String getBelangrijksteTaak() {
        if (takenlijst.get(0) == null) throw new IllegalArgumentException("Database leeg");
        int teller = 0;
        Taak temp = takenlijst.get(0);
        for (Taak t: takenlijst) {
            if (t.getPrioriteit() > teller) {
                teller = t.getPrioriteit();
                temp = t;
            }
        }
        return temp.format();
    }
}
