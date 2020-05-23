package com.gottskalksson.carmanager.entity;

import lombok.Getter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Size;
import java.text.DecimalFormat;
import java.util.Date;

@Entity
@Table(name = "services")
@Getter
public class Service {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne
    private User user;

    @ManyToOne
    private Car car;

    @NotEmpty
    @Size(max = 15)
    private String typeService;

    @NotEmpty
    private String description;

    @Min(0)
    private double priceForItems;

    @Min(0)
    private double priceForJob;

    private String totalPrice;

    @PastOrPresent
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    private Date serviceDate;

    public void setId(long id) {
        this.id = id;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public void setTypeService(String typeService) {
        this.typeService = typeService;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPriceForItems(double priceForItems) {
        this.priceForItems = priceForItems;
    }

    public void setPriceForJob(double priceForJob) {
        this.priceForJob = priceForJob;
    }

    public void setTotalPrice() {
        DecimalFormat df = new DecimalFormat("0.00");
        this.totalPrice = df.format(this.priceForItems + this.priceForJob);
    }

    public void setServiceDate(Date serviceDate) {
        this.serviceDate = serviceDate;
    }
}
