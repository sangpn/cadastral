package com.example.cadastral.dto;


import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AddCadastralBodyRequest {
    private String fullName;
    private String distric;
    private String province;
}
