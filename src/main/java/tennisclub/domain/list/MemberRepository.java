package tennisclub.domain.list;

public interface MemberRepository {
    Iterable<Member> findAll();
    Member find(int id) throws NoMemberExists;
    Member create(String name);
}
