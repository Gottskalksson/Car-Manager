package com.gottskalksson.carmanager.entity;

import com.gottskalksson.carmanager.validator.UniqueEmail;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.UniqueElements;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "users")
@Getter
@Setter
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Email
    @NotEmpty
    @Column(unique = true)
    @UniqueEmail
    private String email;

    @NotEmpty
    private String password;

    @NotEmpty
    private String name;

}
