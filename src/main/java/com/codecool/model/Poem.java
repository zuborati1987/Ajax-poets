package com.codecool.model;

import java.util.Objects;

public final class Poem extends AbstractModel {

    private final String title;
    private final String body;

    public Poem(int id, String title, String body) {
        super(id);
        this.title = title;
        this.body = body;
    }

    public String getTitle() {
        return title;
    }

    public String getBody() {
        return body;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Poem coupon = (Poem) o;
        return body == coupon.body &&
            Objects.equals(title, coupon.title);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), title, body);
    }
}
