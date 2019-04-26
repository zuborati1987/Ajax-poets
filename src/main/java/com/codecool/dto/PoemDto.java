package com.codecool.dto;

import com.codecool.model.Poem;

import java.util.List;

public final class PoemDto {

    private final Poem poem;

    public PoemDto(Poem poem) {
        this.poem = poem;
    }

    public Poem getPoem() {
        return poem;
    }
}
