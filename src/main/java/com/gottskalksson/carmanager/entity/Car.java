package com.gottskalksson.carmanager.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

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
    private String plateNumber;

    @Min(1800)
    private int yearProduction;

    private int engineCapacity;

    private int horsePower;

    @ManyToOne
    private User user;

    @NotEmpty
    private String motDate;

    @NotEmpty
    private String insuranceDate;

}
