package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Group;
import pl.coderslab.repository.GroupRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class GroupService {

    @Autowired
    GroupRepository groupRepository;

    public void save(Group group) {
        groupRepository.save(group);
    }

    public Group find(Long id) {
        return groupRepository.findOne(id);
    }

    public List<Group> findAll() {
        return groupRepository.findAll();
    }

    public void delete(Long id) {
        groupRepository.delete(id);
    }
}
