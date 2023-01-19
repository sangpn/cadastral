package com.example.cadastral.repository;

import com.example.cadastral.dto.AddCadastralBodyRequest;
import com.example.cadastral.entity.CadastralInfo;
import com.example.cadastral.dto.EditAddressBodyRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface CadastralRepository extends JpaRepository<CadastralInfo, Long> {
    @Query (value = "update addess set distric = :#{#editAddressBodyRequest.distric} where  id = :id", nativeQuery = true)
    @Modifying
    @Transactional
    void  updateAddress (Long id, EditAddressBodyRequest editAddressBodyRequest);
    @Query (value = "select new com.example.cadastral.dto.AddCadastralBodyRequest(p.fullName, c.distric, c.province) " +
            " from PersonInfo p inner join CadastralInfo c on p.id = c.personid where p.fullName like :param or  c.distric like  :param or c.province like  :param")
    List<AddCadastralBodyRequest> searchAddress (String param);
}
