package cl.tbd.trabajo2grupo2.models;

import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="voluntario")
public class Voluntario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_voluntario;
    private String nombre;
    private Date fecha_registro;
    private Float latitud;
    private Float Longitud;
    private String ubicacion;

    //Constructor
    public Voluntario(Long id_voluntario, String nombre, Date fecha_registro, Float latitud, Float Longitud,
    String ubicacion) {
        this.id_voluntario = id_voluntario;
        this.nombre = nombre;
        this.fecha_registro = fecha_registro;
        this.latitud = latitud;
        this.Longitud = Longitud;
        this.ubicacion = ubicacion;
    }

    // Getters y setters
    public Long getId_voluntario() {
        return id_voluntario;
    }
    public void setId_voluntario(Long id_voluntario) {
        this.id_voluntario = id_voluntario;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Date getFecha_registro() {
        return fecha_registro;
    }
    public void setFecha_registro(Date fecha_registro) {
        this.fecha_registro = fecha_registro;
    }
    public Float getLatitud() {
        return latitud;
    }
    public void setLatitud(Float latitud) {
        this.latitud = latitud;
    }
    public Float getLongitud() {
        return Longitud;
    }
    public void setLongitud(Float Longitud) {
        this.Longitud = Longitud;
    }
    public String getUbicacion() {
        return ubicacion;
    }
    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    //ToString
    @Override
    public String toString() {
        return "Voluntario [id_voluntario=" + id_voluntario + ", nombre_voluntario=" + nombre
                + ", fecha_registro=" + fecha_registro + ", latitud=" + latitud + ", Longitud=" + Longitud
                + ", ubicacion=" + ubicacion + "]";
    }
}
