package com.example.cadastral.services.impl;

import com.example.cadastral.dto.AddCadastralBodyRequest;
import com.example.cadastral.entity.CadastralInfo;
import com.example.cadastral.dto.EditAddressBodyRequest;
import com.example.cadastral.entity.PersonInfo;
import com.example.cadastral.repository.CadastralRepository;
import com.example.cadastral.repository.PersonRepository;
import com.example.cadastral.services.CadastralService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Service
public class CadastralServiceImpl implements CadastralService {
    @Autowired
    private PersonRepository personRepository;
    @Autowired
    private CadastralRepository cadastralRepository;
    @Override
    public void addCadastral(AddCadastralBodyRequest paramBody) {
        PersonInfo personInfo = PersonInfo.builder()
                .fullName(paramBody.getFullName())
                .build();
        PersonInfo re =  personRepository.save(personInfo);
        System.out.println("hhhhhhhhh " + re.getId());
        if (!Objects.isNull(re.getId())){
            // the "then" clause: decrease current speed
            CadastralInfo cadastralInfo = CadastralInfo.builder()
                    .distric(paramBody.getDistric())
                    .province(paramBody.getProvince())
                    .personid(re.getId())
                    .build();
            cadastralRepository.save(cadastralInfo);
        }

    }

    @Override
    public void addAddress(AddCadastralBodyRequest paramBody) {
        CadastralInfo cadastralInfo = CadastralInfo.builder()
                .distric(paramBody.getDistric())
                .province(paramBody.getProvince())
                .build();
        cadastralRepository.save(cadastralInfo);
    }

    @Override
    public void editAddress(Long id, EditAddressBodyRequest paramBody) {
        cadastralRepository.updateAddress(id, paramBody);
    }

    @Override
    public void deleteAddress(Long id) {
        cadastralRepository.deleteById(id);
    }

    @Override
    public List<AddCadastralBodyRequest> searchAddress(String param) {

        return cadastralRepository.searchAddress("%" + param + "%");
    }
}
