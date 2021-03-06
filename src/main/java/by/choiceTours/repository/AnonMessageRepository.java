package by.choiceTours.repository;

import by.choiceTours.entity.AnonMessage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AnonMessageRepository extends JpaRepository<AnonMessage, Long> {
}
