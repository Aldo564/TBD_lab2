package cl.tbd.trabajo2grupo2.models;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="emergencia")
public class Emergencia {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_emergencia;
    private String asunto;
    private String descripcion;
    private String direccion;
    private Date fecha;
    public Boolean activa;
    private Integer id_institucion;
    private Float latitud;
    private Float longitud;
    private String ubicacion;
    //private Geometry geom; // Esto es para los polígonos, en caso de que sea necesario usarlo

    //Constructor
    public Emergencia(Long id_emergencia,
                        String asunto, 
                        String descripcion, 
                        String direccion, 
                        Date fecha,
                        Boolean activa, 
                        Integer id_institucion,
                        Float latitud,
                        Float longitud,
                        String ubicacion) {
        this.id_emergencia = id_emergencia;
        this.asunto = asunto;
        this.descripcion = descripcion;
        this.direccion = direccion;
        this.fecha = fecha;
        this.activa = activa;
        this.id_institucion = id_institucion;
        this.latitud = latitud;
        this.longitud = longitud;
        this.ubicacion = ubicacion;
    }

    //Getters
    public Long getId_emergencia() {
        return id_emergencia;
    }

    public String getasunto() {
        return asunto;
    }


    public String getdescripcion() {
        return descripcion;
    }

    public String getdireccion() {
        return direccion;
    }

    public Date getfecha() {
        return fecha;
    }

    public Boolean getactiva() {
        return activa;
    }

    public Integer getId_institucion() {
        return id_institucion;
    }
    
    public Float getLatitud() {
        return latitud;
    }

    public Float getLongitud() {
        return longitud;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    //Setters
    public void setId_emergencia(Long id_emergencia) {
        this.id_emergencia = id_emergencia;
    }

    public void setasunto(String asunto) {
        this.asunto = asunto;
    }

    public void setdescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setdireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setfecha(Date fecha) {
        this.fecha = fecha;
    }

    public void setactiva(Boolean activa) {
        this.activa = activa;
    }

    public void setId_institucion(Integer id_institucion) {
        this.id_institucion = id_institucion;
    }
    
    public void setLatitud(Float latitud) {
        this.latitud = latitud;
    }

    public void setLongitud(Float longitud) {
        this.longitud = longitud;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    //TOSTRING
    @Override
    public String toString() {
        return "Emergencia [id_emergencia=" + id_emergencia + ", asunto=" + asunto + ", descripcion=" + descripcion
                + ", direccion=" + direccion + ", fecha=" + fecha + ", activa=" + activa + ", id_institucion="
                + id_institucion + ", latitud=" + latitud+", longitud="+longitud+", ubicacion="+ubicacion+"]";
    }
}

