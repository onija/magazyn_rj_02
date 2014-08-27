package pl.altkom.magazyn.model;

import java.util.Comparator;

public class ComparatorByIlosc implements Comparator<Towar> {

    @Override
    public int compare(Towar o1, Towar o2) {
        Integer il1 = new Integer(o1.getIlosc());
        Integer il2 = new Integer(o2.getIlosc());

        return il1.compareTo(il2);
    }

}
