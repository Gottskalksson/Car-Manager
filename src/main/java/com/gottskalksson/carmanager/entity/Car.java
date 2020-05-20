package com.gottskalksson.carmanager.entity;

import com.gottskalksson.carmanager.validator.UniquePlateNumber;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.FutureOrPresent;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Size;
import java.time.Year;
import java.util.Date;

@Entity
@Table(name = "cars")
@Getter
@Setter
public class Car {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotEmpty
    @Size(max = 30)
    private String brand;

    @NotEmpty
    @Size(max = 30)
    private String model;

    @NotEmpty
    @Size(max = 15)
    @Column(unique = true)
    @UniquePlateNumber
    private String plateNumber;

    @PastOrPresent
    private Year yearProduction;

    private int engineCapacity;

    private int horsePower;

    @ManyToOne
    private User user;

    @FutureOrPresent
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    private Date motDate;

    @FutureOrPresent
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    private Date insuranceDate;

}
