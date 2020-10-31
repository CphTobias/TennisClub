package tennisclub.api;

import tennisclub.domain.list.Member;
import tennisclub.domain.list.MemberRepository;

public class TennisClub {
    private static final String VERSION = "0.1";
    private final MemberRepository memberRepo;

    public TennisClub(MemberRepository memberRepo) {
        this.memberRepo = memberRepo;
    }

    public String getVersion(){
        return VERSION;
    }

    public Member create(String name){
        return memberRepo.create(name);
    }
}
