package com.example.cadastral.controller;

import com.example.cadastral.dto.AddCadastralBodyRequest;
import com.example.cadastral.dto.EditAddressBodyRequest;
import com.example.cadastral.services.CadastralService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController

public class CadastralController {
    @Autowired
    private CadastralService cadastralService;

    @RequestMapping(value = "/add/cadastral", method = {RequestMethod.POST})
    public void addCadastral(@RequestBody AddCadastralBodyRequest request) {
        cadastralService.addCadastral(request);
    }

    @RequestMapping(value = "/add/address", method = {RequestMethod.POST})
    public void addDistric(@RequestBody AddCadastralBodyRequest request) {
        cadastralService.addAddress(request);
    }

    @RequestMapping(value = "/edit/address/{id}", method = {RequestMethod.PUT})
    public void editDistric(@PathVariable Long id, @RequestBody EditAddressBodyRequest request) {
        cadastralService.editAddress(id, request);
    }

    @RequestMapping(value = "/delete/address/{id}", method = {RequestMethod.DELETE})
    public void deleteDistric(@PathVariable Long id) {
        cadastralService.deleteAddress(id);
    }

    @RequestMapping(value = "/search/address", method = {RequestMethod.GET})
    public ResponseEntity<List<AddCadastralBodyRequest>> fine(@RequestParam String param) {
        return ResponseEntity.ok(cadastralService.searchAddress(param));
    }

}
