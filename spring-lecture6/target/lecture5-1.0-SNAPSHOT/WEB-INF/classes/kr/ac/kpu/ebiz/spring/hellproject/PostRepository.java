package kr.ac.kpu.ebiz.spring.hellproject;

import java.util.List;
import java.util.Map;

public interface PostRepository {

	boolean insert(Map post);

	boolean update(Map post);

	Map select(Integer postId);

	List<Map> selectAll();

	List<Map> selectCategory(String category);

	List<Map> selectSearch(Map post);

	boolean delete(int postId);


}
