package com.example.mad2practice;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;

public class ItemInfo extends AppCompatActivity {

    View viewBack;
    ImageView itemInfoImg;
    TextView itemInfoName,itemInfoPrice,itemInfoDetail,itemInfoDisc;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getSupportActionBar().hide();
        this.getWindow().setFlags(
                WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_item_info);

        Bundle bundle=getIntent().getBundleExtra("itemInfo");
        String itemName=bundle.getString("itemName");
        String itemDetail=bundle.getString("itemDetail");
        String itemPrice=bundle.getString("itemPrice");
        String itemDisc=bundle.getString("itemDisc");
        int imgId=bundle.getInt("itemImg");


        viewBack=findViewById(R.id.viewBack);
        itemInfoName=findViewById(R.id.itemInfoName);
        itemInfoImg=findViewById(R.id.itemInfoImg);
        itemInfoDetail=findViewById(R.id.itemInfoDetail);
        itemInfoPrice=findViewById(R.id.itemInfoPrice);
        itemInfoDisc=findViewById(R.id.itemInfoDisc);




        itemInfoImg.setImageResource(imgId);
        itemInfoName.setText(itemName);
        itemInfoDetail.setText(itemDetail);
        itemInfoPrice.setText(itemPrice);
        itemInfoDisc.setText(itemDisc);
        viewBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                onBackPressed();
            }
        });



    }

}