package tennisclub.domain.member;

public interface MemberRepository {
    Iterable<Member> findAll() throws NoMemberExists;
    Member find(int id) throws NoMemberExists;
    Member create(String name) throws NoMemberExists;
}
