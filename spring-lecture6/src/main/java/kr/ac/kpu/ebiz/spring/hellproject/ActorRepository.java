package kr.ac.kpu.ebiz.spring.hellproject;

import java.util.List;
import java.util.Map;

public interface ActorRepository {

	Map select(Integer actorId);

	List<Map> selectAll();

	boolean delete(int actorId);
}
