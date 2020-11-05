package tennisclub.infrastructure;

import tennisclub.domain.member.Member;
import tennisclub.domain.member.MemberRepository;
import tennisclub.domain.member.NoMemberExists;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
            String sql = "SELECT * FROM members WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeQuery();
            ResultSet rs = ps.getResultSet();
            if(rs.next()) {
                return parseMember(rs);
            } else {
                throw new RuntimeException("Unexpected error");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new NoMemberExists();
        }

    }

    private Member parseMember(ResultSet rs) throws SQLException {
        return new Member(
                rs.getInt("members.id"),
                rs.getString("members.name")
        );
    }

    @Override
    public Member create(String name) {
        int newid;
        try (Connection conn = db.connect()) {
            String sql = "INSERT INTO members (name) VALUES (?)";
            PreparedStatement ps = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, name);
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if(rs.next()) {
                newid = rs.getInt(1);
            } else {
                throw new RuntimeException("Unexpected error");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try {
            return find(newid);
        } catch (NoMemberExists e) {
            throw new RuntimeException(e);
        }
    }
}
