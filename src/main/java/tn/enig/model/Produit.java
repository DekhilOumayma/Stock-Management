package tn.enig.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity //annotation
public class Produit {
@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
private Integer id; //kena fel enoncé lclasse mafihech id donc ane nzid men 3ndi champ nsamih id 
private float prixachat ;
private float prixvente ;
private int nbre;
private String description ;
@ManyToOne
@JoinColumn(name="magasin_id") //esm lclasse eli 8adi(magasin)_esm champ eli fl classe hedhi(id) 
private Magasin mg ;          //le champs magasin_id bech ykoun mawjoud reellement fel base de données
public Produit() {
super();
// TODO Auto-generated constructor stub
}

 public Produit(Integer id, float prixachat, float prixvente, int nbre, String description, Magasin mg) {
super();
this.id = id;
this.prixachat = prixachat;
this.prixvente = prixvente;
this.nbre = nbre;
this.description = description;
this.mg = mg;
}

 public Integer getId() {
return id;
}

 public void setId(Integer id) {
this.id = id;
}

 public float getPrixachat() {
return prixachat;
}

 public void setPrixachat(float prixachat) {
this.prixachat = prixachat;
}

 public float getPrixvente() {
return prixvente;
}

 public void setPrixvente(float prixvente) {
this.prixvente = prixvente;
}

 public int getNbre() {
return nbre;
}

 public void setNbre(int nbre) {
this.nbre = nbre;
}

 public String getDescription() {
return description;
}

 public void setDescription(String description) {
this.description = description;
}

 public Magasin getMg() {
return mg;
}

 public void setMg(Magasin mg) {
this.mg = mg;
}



}