package Default;


import javax.persistence.*;
import javax.persistence.Entity;
//import org.hibernate.annotations.Entity;



@Entity
@Table(name = "newemployeetable")
public class Person {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //ovo ce mozda biti problem, posto mySQL automatski generise ID u tabeli;
    @Column(name = "id")
    private int id; 
    
    @Column(name = "first")  //stavio sam imena koloni u mySQL datoteci;
    private String first;
    
    @Column(name = "last")
    private String last;
    
    @Column(name = "email")
    private String email;
    
    @Column(name = "salary")
    private int salary;
    
    @Column(name = "age")
    private int age;

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    
    public String getName() {return first;}
    public void setName(String first) {this.first = first;}
    
    public String getLastName() {return last;}
    public void setLastName(String last) {this.last = last;}
    
    public int getMonthlySalary() {return salary;}
    public void setMonthlySalary(int salary) {this.salary = salary;}
    
    public String getAddress() {return email;}
    public void setAddress(String email) {this.email = email;}
    
    public int getAge() {return age;}
    public void setAge(int age) {this.age = age;}
    
    
    public Person(String first, String last, String email, int salary, int age) {
        this.first = first;
        this.last = last;
        this.email = email;
        this.salary = salary;
        this.age = age;
    }

    public Person() {
    }
    
}


