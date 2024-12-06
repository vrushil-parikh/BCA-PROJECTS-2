package com.example.mad2practice;

import androidx.annotation.NonNull;

import java.util.ArrayList;
import java.util.stream.Stream;

public class MenuModel extends ArrayList<CharSequence> {
    String itemName;
    String itemDetail;
    String price;
    String disText;
    int imgId;

    public MenuModel(String itemName, String itemDetail, String price, String disText, int imgId) {
        this.itemName = itemName;
        this.itemDetail = itemDetail;
        this.price = price;
        this.disText = disText;
        this.imgId = imgId;
    }

    @NonNull
    @Override
    public Stream<CharSequence> stream() {
        return super.stream();
    }
}
