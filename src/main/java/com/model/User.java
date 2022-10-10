package com.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;
import org.joda.time.DateTime;

@RequiredArgsConstructor
@Data
@AllArgsConstructor
@JsonIgnoreProperties
@ToString(callSuper = true)
public class User {
    private int no;
    private String type;
    private String name;
    private String password;
    private String email;
    private DateTime regDatetime;
    private DateTime updateDatetime;

}
