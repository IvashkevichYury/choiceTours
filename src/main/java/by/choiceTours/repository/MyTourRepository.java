package by.choiceTours.repository;

import by.choiceTours.entity.MyTour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MyTourRepository extends JpaRepository<MyTour, Integer> {
}
