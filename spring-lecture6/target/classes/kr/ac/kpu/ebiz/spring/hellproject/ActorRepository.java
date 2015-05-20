package kr.ac.kpu.ebiz.spring.hellproject;

import java.util.List;
import java.util.Map;

public interface ActorRepository {

	boolean insert(Map actor);
	
	Map select(Integer actorId);

	List<Map> selectAll();

	boolean delete(int actorId);
}
