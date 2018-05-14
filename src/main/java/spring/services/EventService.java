package spring.services;

import org.springframework.beans.factory.annotation.Autowired;

import spring.DAOs.EventDao;
import spring.models.Event;

/**
 * Created by lin on 4/6/2018.
 */
public class EventService {

    @Autowired
    public EventDao eventDao;

    public void createEvent(Event event) throws Exception {
        eventDao.createEvent(event);
        System.out.println(event.toString());
    }
}
