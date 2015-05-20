package kr.ac.kpu.ebiz.spring.hellproject;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.List;
import java.util.Map;

public class PostRepositoryImpl extends SqlSessionDaoSupport implements PostRepository {

	public boolean insert(Map post) {
		return getSqlSession().insert("PostRepository.insert", post) > 0;
	}

	public Map select(Integer postId) {
		return getSqlSession().selectOne("PostRepository.select", postId);
	}

	public List<Map> selectAll() {
		return getSqlSession().selectList("PostRepository.selectAll");
	}

	public boolean delete(int postId) {
		return getSqlSession().delete("PostRepository.delete", postId) > 0;
	}

}
