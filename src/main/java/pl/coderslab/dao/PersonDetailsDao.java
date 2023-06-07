package pl.coderslab.repository;

import org.springframework.stereotype.Repository;
import pl.coderslab.entity.PersonDetails;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class PersonDetailsDao {
    @PersistenceContext
    private EntityManager entityManager;

    public void save(PersonDetails personDetails) {
        entityManager.persist(personDetails);
    }

    public void update(PersonDetails personDetails) {
        entityManager.merge(personDetails);
    }

    public PersonDetails findById(Long id) {
        return entityManager.find(PersonDetails.class, id);
    }
    public void deleteById(Long id) {
        PersonDetails personDetails = findById(id);
        if (personDetails != null) {
            entityManager.remove(personDetails);
        }
    }
}