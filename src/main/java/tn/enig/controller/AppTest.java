package tn.enig.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import tn.enig.dao.IMagasinDao;
import tn.enig.dao.IProduitDao;
import tn.enig.model.Magasin;
import tn.enig.model.Produit;

@Controller
public class AppTest {

 @Autowired
IProduitDao daop ; //injection de dao
@Autowired
IMagasinDao daom;
public void setDaop(IProduitDao daop) {
this.daop = daop;
}
public void setDaom(IMagasinDao daom) {
this.daom = daom;
}
//listemag hiya l bch tetktab fl url
@GetMapping("/listemag") ///listemag hiya l path fel url
public String get1(Model m) { //le model m houwa qui assure la communication entre le controller et le view
List<Magasin> liste1=daom.findAll();
//liste hiya l bch n7ottouha fl jsp
m.addAttribute("liste",liste1); //ajouter la liste dans liste1
return "listemag"; //listemag hedhi hiya esm l pageJSP
}

@GetMapping("/magasin/{id}")//hedhi eli maktouba fi JSP
//Path variable hiya tari9a l 3mlna biha l 'acces ml jsp
// "id": hathi fl jsp
public String get2(Model m , @PathVariable("id") int id) {
List<Produit> liste = daop.getAllProduitByCat(id);
// List<Produit> liste = daop.findAll();
System.out.println(liste);
m.addAttribute("liste",liste);
return "produits";
}
@GetMapping("/ajoutProduit")
public String get3(Model m) {
Produit p = new Produit();
List<Magasin> listemg= daom.findAll();//zedna liste magasin 5ater lezem na3tih les magasin disponible lel formulaire
m.addAttribute("p",p);
m.addAttribute("listemg",listemg);
return "ajoutp";
}
@PostMapping("/saveProduit")
public String get4(Model m, @ModelAttribute("p") Produit p) {
daop.save(p);
return "redirect:/listemag";
}

@GetMapping("/deletp/{id}")
public String get5(Model m, @PathVariable("id") int id) {
daop.deleteById(id);
return "redirect:/listemag";
}


}