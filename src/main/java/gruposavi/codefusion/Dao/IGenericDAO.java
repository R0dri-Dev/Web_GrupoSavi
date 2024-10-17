package gruposavi.codefusion.Dao;

import java.util.List;

public interface IGenericDAO <T>{
    void insert(T entity);
    void update(T entity);
    T findBy(Object id);
    void delete(T entity);
    List<T> findAll();
}
