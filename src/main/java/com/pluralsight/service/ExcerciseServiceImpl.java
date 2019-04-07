package com.pluralsight.service;

import com.pluralsight.model.Activity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("exerciseService")
public class ExcerciseServiceImpl implements ExcerciseService {

    @Override
    public List<Activity> findAllActivities() {

    List<Activity> activities = new ArrayList<>();
    Activity run = new Activity();
        run.setDesc("Run");
        activities.add(run);

    Activity bike = new Activity();
        bike.setDesc("bike");
        activities.add(bike);

    Activity swim = new Activity();
        swim.setDesc("swim");
        activities.add(swim);

        return activities;
    }
}
