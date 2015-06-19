package kr.ac.kpu.ebiz.spring.hellproject;

import java.util.Map;

/**
 * Created by WJ.Kim on 2015-05-26.
 */
public interface UserRepository {
    boolean insert(Map user);

    String idCheck(String userId);

    String pwdCheck(String userId);

    String name(String userId);
}
