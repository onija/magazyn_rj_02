package pl.altkom.magazyn.model;

import java.util.Comparator;

public class ComparatorByOpis implements Comparator<Towar> {

    @Override
    public int compare(Towar o1, Towar o2) {
        String opis1 = o1.getOpis();
        String opis2 = o2.getOpis();
        return opis1.compareToIgnoreCase(opis2);
    }

}
