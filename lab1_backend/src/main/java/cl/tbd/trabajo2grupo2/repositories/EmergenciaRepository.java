package cl.tbd.trabajo2grupo2.repositories;

import java.sql.Date;
import java.util.List;

import org.springframework.data.geo.Point;

import cl.tbd.trabajo2grupo2.models.Emergencia;


public interface EmergenciaRepository
{
    public Long getIdNuevaEmergencia();
    public List<Emergencia> getAllEmergencias();
    public void createEmergencia(Emergencia emergencia);
    public Emergencia findByIdEmergencia(Long id_emergencia);
    public void updateEmergencia(Long id_emergencia, String asunto, String descripcion, String direccion, Date fecha, Boolean activa, Long id_institucion, Long latitud, Long longitud, Point ubicacion);
    public void deleteEmergenciaById(Long id_emergencia);
    public void cambiarEstado(Long id_emergencia);
    public void obtenerVoluntariosEmergenciaEnRadioR(Long id_emergencia, Double R);
}