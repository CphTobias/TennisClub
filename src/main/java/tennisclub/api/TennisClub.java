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

    public Member createMember(String name) {
        return memberRepo.create(name);
    }

    public Member findMemberById(int i) throws NoMemberExists {
        return memberRepo.find(i);
    }
}
