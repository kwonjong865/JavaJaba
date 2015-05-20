package kr.ac.kpu.ebiz.spring.hellproject;

import java.util.List;
import java.util.Map;

public interface PostRepository {

	boolean insert(Map post);

	Map select(Integer postId);

	List<Map> selectAll();

	boolean delete(int postId);
}
