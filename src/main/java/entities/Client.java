
package entities;

import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@DiscriminatorValue("ROLE_CLIENT")
public class Client extends User {
    
	private static final long serialVersionUID = 1L;
	
	private String nom;
    private String prenom;
    private String cin;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dateNaissance;
    private String sexe;
    private String tel;
    private String adresse;
    private String numCarteBancaire;
    @OneToMany(mappedBy="client",fetch=FetchType.LAZY,cascade=CascadeType.REMOVE)
    private Collection<Reservation> reservations;
    @OneToMany(mappedBy="client",fetch=FetchType.LAZY,cascade=CascadeType.REMOVE)
    private List<Rating> ratings;

    public Client() {
    	this.setRole("ROLE_CLIENT");
    }

    public Client(String nom, String prenom, String cin, Date dateNaissance, String sexe, String tel, String adresse, String numCarteBancaire, String email, String userName,String password) {
        super(email, userName,password);
        this.nom = nom;
        this.prenom = prenom;
        this.cin = cin;
        this.dateNaissance = dateNaissance;
        this.sexe = sexe;
        this.tel = tel;
        this.adresse = adresse;
        this.numCarteBancaire = numCarteBancaire;
        this.setRole("ROLE_CLIENT");
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getNumCarteBancaire() {
        return numCarteBancaire;
    }

    public void setNumCarteBancaire(String numCarteBancaire) {
        this.numCarteBancaire = numCarteBancaire;
    }

    public Collection<Reservation> getReservations() {
        return reservations;
    }

    public void setReservations(Collection<Reservation> reservations) {
        this.reservations = reservations;
    }

    public List<Rating> getRatings() {
        return ratings;
    }

    public void setRatings(List<Rating> ratings) {
        this.ratings = ratings;
    }
    
    public Client update(Client client)
    {
    	this.setUserName(client.getUserName());
    	this.setEmail(client.getEmail());
    	this.tel = client.tel;
    	this.nom = client.nom;
    	this.prenom = client.prenom;
    	this.cin = client.cin;
    	this.sexe = client.sexe;
    	this.dateNaissance = client.dateNaissance;
    	
    	return this;
    }
    
    
}
