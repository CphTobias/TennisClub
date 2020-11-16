package tennisclub.api;

import tennisclub.domain.member.Member;
import tennisclub.domain.member.MemberRepository;
import tennisclub.domain.member.NoMemberExists;

public class TennisClub {
    private static final String VERSION = "0.1";
    private final MemberRepository memberRepo;

    public TennisClub(MemberRepository memberRepo) {
        this.memberRepo = memberRepo;
    }

    public String getVersion(){
        return VERSION;
    }

    /**
     *
     * @param name - Name of the created member
     * @return - Returns a member or null if none was found
     * @throws NoMemberExists - Thrown if this member did no exist
     */
    public Member createMember(String name) throws NoMemberExists {
        return memberRepo.create(name);
    }

    /**
     *
     * @param id - Looking for a member with this id
     * @return Member
     * @throws NoMemberExists - Thrown if this member did not exist
     */
    public Member findMemberById(int id) throws NoMemberExists {
        return memberRepo.find(id);
    }
}
