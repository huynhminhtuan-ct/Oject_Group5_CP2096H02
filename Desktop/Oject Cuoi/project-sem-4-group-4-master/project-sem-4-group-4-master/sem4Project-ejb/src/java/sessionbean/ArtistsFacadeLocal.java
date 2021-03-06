/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbean;

import entities.Artists;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author asus
 */
@Local
public interface ArtistsFacadeLocal {

    void create(Artists artists);

    void edit(Artists artists);

    void remove(Artists artists);

    Artists find(Object id);

    List<Artists> findAll();

    List<Artists> findRange(int[] range);

    int count();
    
}
