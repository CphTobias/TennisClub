package tennisclub.infrastructure;

import tennisclub.domain.list.Member;
import tennisclub.domain.list.MemberRepository;
import tennisclub.domain.list.NoMemberExists;

import java.sql.Connection;
import java.sql.SQLException;

public class DBMemberRepository implements MemberRepository {

    private final Database db;

    public DBMemberRepository(Database db) {
        this.db = db;
    }

    @Override
    public Iterable<Member> findAll() {
        return null;
    }

    @Override
    public Member find(int id) throws NoMemberExists {
        try (Connection conn = db.connect()) {
            return null;
        } catch (SQLException throwables) {
            throw new NoMemberExists();
        }

    }

    @Override
    public Member create(String name) {
        return null;
    }
}
