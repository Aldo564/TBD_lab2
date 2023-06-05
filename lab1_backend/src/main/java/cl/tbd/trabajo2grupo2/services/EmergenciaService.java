package cl.tbd.trabajo2grupo2.services;

import java.sql.Date;
import java.util.List;

import org.springframework.data.geo.Point;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cl.tbd.trabajo2grupo2.models.Emergencia;
import cl.tbd.trabajo2grupo2.repositories.EmergenciaRepository;

@RestController
@RequestMapping("/emergencia")
public class EmergenciaService {
    
    private final EmergenciaRepository emergenciaRepository;
    EmergenciaService(EmergenciaRepository emergenciaRepository)
    {
        this.emergenciaRepository = emergenciaRepository;
    }

    //Obtener todas las emergencias
    @GetMapping("/getAll")
    public List<Emergencia> getAllEmergencias(){
        return emergenciaRepository.getAllEmergencias();
    }

    //Registrar una emergencia en la base de datos
    @PostMapping("/create")
    public void createEmergencia(Emergencia emergencia){
        emergenciaRepository.createEmergencia(emergencia);
    }

    //Obtener una emergencia por su id
    @GetMapping("/getById-id/{id_emergencia}")
    public Emergencia getEmergenciaById(@PathVariable Long id_emergencia){
        return emergenciaRepository.findByIdEmergencia(id_emergencia);
    }

    //Actualizar una emergencia
    @RequestMapping(value = "/updateById-id/{id_emergencia}", method = RequestMethod.PUT)
    public void updateEmergencia(@PathVariable Long id_emergencia, String asunto, String descripcion, String direccion, Date fecha, Boolean activa, Long id_institucion, Long latitud, Long longitud, Point ubicacion){
        emergenciaRepository.updateEmergencia(id_emergencia, asunto, descripcion, direccion, fecha, activa, id_institucion, latitud, longitud, ubicacion);
    }

    //Cambiare estado de una emergencia
    @RequestMapping(value = "/cambiarEstado/{id_emergencia}", method = RequestMethod.PUT)
    public void cambiarEstado(@PathVariable Long id_emergencia){
        emergenciaRepository.cambiarEstado(id_emergencia);
    }

    //Eliminar una emergencia
    @DeleteMapping("/deleteById/{id_emergencia}")
    public void deleteEmergenciaById(@PathVariable Long id_emergencia){
        emergenciaRepository.deleteEmergenciaById(id_emergencia);
    }

    //Funcionalidad pedida: Se debe obtener una lista de todos los voluntarios inscritos en una emergencia dentro del radio R de la emergencia.
    //Se debe agregar el número R como parámetro en la llamada REST
    @PostMapping("/voluntariosEmergencia/{id_emergencia}")
    public void obtenerVoluntariosEmergenciaEnRadioR(@PathVariable Long id_emergencia, Double R){
        emergenciaRepository.obtenerVoluntariosEmergenciaEnRadioR(id_emergencia, R);
    }
}
