/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Databases;

import Models.Pedido;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author filipe
 */
@Stateless
@Path("pedido")
public class PedidoFacade extends AbstractFacade<Pedido> {

    @PersistenceContext(unitName = "ThunderPizzaPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PedidoFacade() {
        super(Pedido.class);
    }
    
    @POST
    @Override
    @Consumes(MediaType.APPLICATION_JSON)
    public void create(Pedido entity) {
        super.create(entity);
    }
    
    @GET
    @Override
    @Produces({"application/xml", "application/json"})
    public List<Pedido> findAll() {
        return super.findAll();
    }
    
}
