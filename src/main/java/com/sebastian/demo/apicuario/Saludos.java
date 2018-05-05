package com.sebastian.demo.apicuario;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

/**
 * A JAX-RS interface. An implementation of this interface must be provided.
 */
@Path("/saludos")
public interface Saludos {

    /**
     * Obtiene el saludo para personalizado
     *
     * @param nombre
     * @return
     */
    @Path("/{nombre}")
    @GET
    @Produces("text/plain")
    String saludar(@PathParam("nombre") String nombre);
}
