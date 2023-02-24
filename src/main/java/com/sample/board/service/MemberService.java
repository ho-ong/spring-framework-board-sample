package com.sample.board.service;

import com.sample.board.dto.MemberDTO;
import com.sample.board.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;

    // 회원가입
    public int join(MemberDTO memberDTO) {
        return memberRepository.join(memberDTO);
    }

    // 로그인
    public boolean login(MemberDTO memberDTO) {
        MemberDTO loginMember = memberRepository.login(memberDTO);

        if(loginMember != null) {
            return true;
        } else {
            return false;
        }
    }

}
