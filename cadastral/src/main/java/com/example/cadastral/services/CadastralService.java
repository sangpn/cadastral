package com.example.cadastral.services;

import com.example.cadastral.dto.AddCadastralBodyRequest;
import com.example.cadastral.dto.EditAddressBodyRequest;

import java.util.List;

public interface CadastralService {
    void addCadastral(AddCadastralBodyRequest paramBody);
    void addAddress(AddCadastralBodyRequest paramBody);
    void editAddress(Long id, EditAddressBodyRequest paramBody);
    void deleteAddress(Long id);
    List<AddCadastralBodyRequest> searchAddress(String param);
}
