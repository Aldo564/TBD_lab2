package cl.tbd.trabajo2grupo2.models;

import javax.persistence.*;

@Entity
@Table(name ="habilidad")
public class Habilidad {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_habilidad;
    private String caracteristica;

    //Constructor
    public Habilidad(Long id_habilidad, String caracteristica){
        this.id_habilidad = id_habilidad;
        this.caracteristica = caracteristica;
    }

    //Getters
    public Long getId_habilidad(){
        return id_habilidad;
    }

    public String getCaracteristica(){
        return caracteristica;
    }

    //Setters
    public void setId_habilidad(Long id_habilidad){
        this.id_habilidad = id_habilidad;
    }

    public void setCaracteristica(String caracteristica){
        this.caracteristica = caracteristica;
    }

    //TOSTRING
    @Override
    public String toString() {
        return "Habilidad [id_habilidad=" + id_habilidad + ", nombre_habilidad=" + caracteristica + "]";
    }

    
}
