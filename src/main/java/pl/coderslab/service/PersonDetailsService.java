package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.entity.PersonDetails;
import pl.coderslab.repository.PersonDetailsDao;

@Service
public class PersonDetailsService {
    private PersonDetailsDao personDetailsDao;

    public PersonDetailsService(PersonDetailsDao personDetailsDao) {
        this.personDetailsDao = personDetailsDao;
    }
    public void add(PersonDetails personDetails) {
        personDetailsDao.save(personDetails);
    }
    public void update(PersonDetails personDetails) {
        personDetailsDao.update(personDetails);
    }
    public void delete(Long id) {
        personDetailsDao.deleteById(id);
    }
    public PersonDetails findById(Long id) {
        return personDetailsDao.findById(id);
    }
}