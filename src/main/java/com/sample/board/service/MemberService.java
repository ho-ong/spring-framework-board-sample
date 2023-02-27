package com.sample.board.service;

import com.sample.board.dto.MemberDTO;
import com.sample.board.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

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

    // 회원목록
    public List<MemberDTO> findAll() {
        return memberRepository.findAll();
    }

    // 회원정보 조회
    public MemberDTO findById(Long id) {
        return memberRepository.findById(id);
    }

    // 회원정보 수정
    public MemberDTO findByMemberEmail(String loginEmail) {
        return memberRepository.findByMemberEmail(loginEmail);
    }

    public boolean update(MemberDTO memberDTO) {
        int result = memberRepository.update(memberDTO);

        if(result > 0) {
            return true;
        } else {
            return false;
        }
    }

    // 회원정보 삭제
    public void delete(Long id) {
        memberRepository.delete(id);
    }

    // 이메일 중복체크
    public String emailCheck(String memberEmail) {
        MemberDTO memberDTO = memberRepository.findByMemberEmail(memberEmail);

        if(memberDTO == null) {
            return "ok";
        } else {
            return "no";
        }
    }

}
