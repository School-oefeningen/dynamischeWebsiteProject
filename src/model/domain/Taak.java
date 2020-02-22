package model.domain;
import java.time.LocalDate;

public class Taak {
    private String beschrijving;
    private LocalDate deadline;
    private int prioriteit;

    public Taak(String beschrijving, LocalDate deadline, int prioriteit) {
        if (beschrijving == null || beschrijving.trim().isEmpty()) throw new IllegalArgumentException("Beschrijving taak mag niet leeg zijn");
        if (deadline.isBefore(LocalDate.now())) throw new IllegalArgumentException("Deadline moet later zijn");
        if (prioriteit < 1 || prioriteit > 10) throw new IllegalArgumentException("Prioriteit moet tussen 1 en 10 zijn");

        this.beschrijving = beschrijving;
        this.deadline = deadline;
        this.prioriteit = prioriteit;
    }

    public String getBeschrijving() {
        return beschrijving;
    }

    public LocalDate getDeadline() {
        return deadline;
    }

    public int getPrioriteit() {
        return prioriteit;
    }

    public String format() {
        return getBeschrijving() + " (" + getDeadline() + ")";
    }
}
