/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Databases;

import Models.Usuario;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

/**
 *
 * @author filipe
 */
@Stateless
@Path("usuario")
public class UsuarioFacade extends AbstractFacade<Usuario> {

    @PersistenceContext(unitName = "ThunderPizzaPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }
    
    @POST
    @Override
    @Consumes({"application/xml", "application/json"})
    public void create(Usuario entity) {
        entity.getId();
        
    }
    
    @GET
    @Consumes({"application/xml", "application/json"})
    public void teste(Usuario entity) {
        
    }
    
}
