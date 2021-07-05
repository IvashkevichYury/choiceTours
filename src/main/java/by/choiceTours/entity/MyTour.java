package by.choiceTours.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "my_tour")
public class MyTour {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String nameHotel;
    private String departureCity;
    private String arrivalCity;
    private int departureDate;
    private int amountOfNights;
    private String food;
    private String transport;
    private int amountOfAdults;
    private int amountOfChildren;
}
