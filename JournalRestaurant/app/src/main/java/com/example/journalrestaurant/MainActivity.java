package com.example.journalrestaurant;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    ListView itemListView;
    int images[]={
            R.drawable.i3,
            R.drawable.i4,
            R.drawable.i5,
            R.drawable.i3,
            R.drawable.i4,
            R.drawable.i5
    };
    String names[]={
            "Veg Burger",
            "Pizza",
            "White Pasta",
            "Veg Burger",
            "Pizza",
            "White Pasta"
    };
    String itemDetail[]={
            "details about burger",
            "details about pizza",
            "details about white pasta",
            "details about burger",
            "details about pizza",
            "details about white pasta"
    };
    String price[]={
            "$25",
            "$28",
            "$20",
            "$25",
            "$28",
            "$20"
    };
    String disc[]={
            " 50%\n Off",
            " 35%\n Off",
            " 60%\n Off",
            " 50%\n Off",
            " 35%\n Off",
            " 60%\n Off"
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getSupportActionBar().hide();
        this.getWindow().setFlags(
                WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_main);

        itemListView=findViewById(R.id.itemList);

        ArrayList<MenuModel> arrayList=new ArrayList<>();
        for (int i=0;i<disc.length;i++){
            MenuModel model=new MenuModel(
                    names[i],
                    itemDetail[i],
                    price[i],
                    disc[i],
                    images[i]
            );
            arrayList.add(model);
        }
        ItemListAdapter adapter=new ItemListAdapter(this,arrayList);

        itemListView.setAdapter(adapter);
        itemListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                Intent intent=new Intent(ItemMenu.this,ItemInfo.class);
                startActivity(intent);
            }
        });


    }
}