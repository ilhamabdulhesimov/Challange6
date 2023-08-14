package Challenge;

public class Challange6 {
    public static void main(String[] args) {
        package com.example.springdemo.model;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
        @Entity
        public class Company {
            @Id
            @GeneratedValue(strategy = GenerationType.IDENTITY)
            private Long id;
            @Column(nullable = false, unique = true)
            private String name;
            @Column(nullable = false)
            private String address;
            @OneToMany(mappedBy = "company", cascade = CascadeType.ALL)
            private List<Employee> employees;
            public Company() {
            }
            public Company(String name, String address) {
                this.name = name;
                this.address = address;
            }
            // getters and setters
        }
package com.example.springdemo.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
        @Entity
        public class Employee {
            @Id
            @GeneratedValue(strategy = GenerationType.IDENTITY)
            private Long id;
            @Column(nullable = false)
            private String name;
            @Column(nullable = false)
            private double salary;
            @ManyToOne
            @JoinColumn(name = "company_id")
            private Company company;
            public Employee() {
            }
            public Employee(String name, double salary) {
                this.name = name;
                this.salary = salary;
            }
            // getters and setters
        }

    }
}
