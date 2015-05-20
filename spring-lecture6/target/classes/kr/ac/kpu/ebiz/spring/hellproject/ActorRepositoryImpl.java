package kr.ac.kpu.ebiz.spring.hellproject;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.List;
import java.util.Map;

public class ActorRepositoryImpl extends SqlSessionDaoSupport implements ActorRepository {

	public boolean insert(Map actor) {
		return getSqlSession().insert("ActorRepository.insert", actor) > 0;
	}

	public Map select(Integer actorId) {
		return getSqlSession().selectOne("ActorRepository.select", actorId);
	}

	public List<Map> selectAll() {
		return getSqlSession().selectList("ActorRepository.selectAll");
	}

	public boolean delete(int actorId) {
		return getSqlSession().delete("ActorRepository.delete", actorId) > 0;
	}

}
