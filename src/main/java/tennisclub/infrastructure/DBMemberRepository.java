package tennisclub.infrastructure;

import tennisclub.domain.member.Member;
import tennisclub.domain.member.MemberRepository;
import tennisclub.domain.member.NoMemberExists;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBMemberRepository implements MemberRepository {

    private final Database db;

    public DBMemberRepository(Database db) {
        this.db = db;
    }

    @Override
    public Iterable<Member> findAll() throws NoMemberExists {
        try (Connection conn = db.connect()) {
            String sql = "SELECT * FROM members";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.executeQuery();

            List<Member> members = new ArrayList<>();
            ResultSet rs = ps.getGeneratedKeys();
            while(rs.next()){
                members.add(parseMember(rs));
            }
            return members;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new NoMemberExists();
        }
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
    public Member create(String name) throws NoMemberExists {
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
            e.printStackTrace();
            throw new NoMemberExists();
        }
        return find(newid);
    }
}
