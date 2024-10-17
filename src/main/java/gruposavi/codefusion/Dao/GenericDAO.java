package gruposavi.codefusion.Dao;

public class GenericDAO<T>{
    private Class<T> entityClass;

    public GenericDAO(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

//    @Override
//    public void insert(T entity) {
//        EntityManager em = JPAUtil.getEntityManager();
//        EntityTransaction transaction = em.getTransaction();
//        try {
//            transaction.begin();
//            em.persist(entity);
//            transaction.commit();
//        } catch (Exception e) {
//            transaction.rollback();
//            e.printStackTrace();
//        } finally {
//            em.close();
//        }
//    }
//
//    @Override
//    public void update(T entity) {
//        EntityManager em = JPAUtil.getEntityManager();
//        EntityTransaction transaction = em.getTransaction();
//        try {
//            transaction.begin();
//            em.merge(entity);
//            transaction.commit();
//        } catch (Exception e) {
//            transaction.rollback();
//            e.printStackTrace();
//        } finally {
//            em.close();
//        }
//    }
//
//    @Override
//    public T findBy(Object id) {
//        EntityManager em = JPAUtil.getEntityManager();
//        try {
//            return em.find(entityClass, id);
//        } finally {
//            em.close();
//        }
//    }
//
//    @Override
//    public void delete(T entity) {
//        EntityManager em = JPAUtil.getEntityManager();
//        EntityTransaction transaction = em.getTransaction();
//        try {
//            transaction.begin();
//            em.remove(em.contains(entity) ? entity : em.merge(entity));
//            transaction.commit();
//        } catch (Exception e) {
//            transaction.rollback();
//            e.printStackTrace();
//        } finally {
//            em.close();
//        }
//    }
//
//    @Override
//    public List<T> findAll() {
//        EntityManager em = JPAUtil.getEntityManager();
//        try {
//            return em.createQuery("from " + entityClass.getSimpleName(), entityClass).getResultList();
//        } finally {
//            em.close();
//        }
//    }
}
