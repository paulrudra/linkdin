package com.example.linkedinclone.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.linkedinclone.entity.Profile;
import com.example.linkedinclone.entity.User;

@Repository
public interface ProfileRepository extends JpaRepository<Profile, Long> {
    Profile findByUser(User user);
}
