package kr.ac.kpu.ebiz.spring.hellproject;

import java.util.Map;
import org.mybatis.spring.support.SqlSessionDaoSupport;
/**
 * Created by WJ.Kim on 2015-05-26.
 */
public class UserRepositoryImpl extends SqlSessionDaoSupport implements UserRepository {
    public boolean insert(Map user) {return getSqlSession().insert("UserRepository.insert", user) > 0;}

    public String idCheck(String userId) {return getSqlSession().selectOne("UserRepository.idCheck",userId);}

    public String pwdCheck(String userId) {return getSqlSession().selectOne("UserRepository.pwdCheck", userId);}

    public String name(String userId) {return getSqlSession().selectOne("UserRepository.name", userId);}
}
