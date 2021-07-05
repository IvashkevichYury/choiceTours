package by.choiceTours.service;

import by.choiceTours.entity.MyTour;
import by.choiceTours.repository.MyTourRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MyTourService {

    private final MyTourRepository tourRepository;

    public MyTour createTour(MyTour tour) {
        return tourRepository.save(tour);
    }

    public List<MyTour> getAll() {
        return tourRepository.findAll();
    }
}
