package com.example.mad2practice;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.ArrayList;

public class ItemListAdapter extends ArrayAdapter {
    public ItemListAdapter(@NonNull Context context, ArrayList<MenuModel> menuIemList) {
        super(context, R.layout.itemlist_layout,menuIemList);
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {

        MenuModel model= (MenuModel) getItem(position);
        if (convertView==null)
            convertView= LayoutInflater.from(getContext()).inflate(R.layout.itemlist_layout,parent,false);

        ImageView itemListImg;
        TextView itemListName;
        TextView itemListDetail;
        TextView itemListPrice;
        TextView itemListDisc;

        itemListImg=convertView.findViewById(R.id.itemListImg);
        itemListName=convertView.findViewById(R.id.itemListName);
        itemListDetail=convertView.findViewById(R.id.itemListDetail);
        itemListPrice=convertView.findViewById(R.id.itemListPrice);
        itemListDisc=convertView.findViewById(R.id.itemListDisc);


        itemListImg.setImageResource(model.imgId);
        itemListName.setText(model.itemName);
        itemListDetail.setText(model.itemDetail);
        itemListPrice.setText(model.price);
        itemListDisc.setText(model.disText);

        return convertView;
    }
}
