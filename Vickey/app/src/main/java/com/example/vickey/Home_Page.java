package com.example.vickey;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;

import java.net.URISyntaxException;

public class Home_Page extends AppCompatActivity {

        EditText editSearch;
        ListView searchList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getSupportActionBar().hide();
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_home_page);
        String operations[]={"SMS Charges","Electricity Bill","Telephone Bill","Interest Credit"};
        ArrayAdapter<String> adapter=new ArrayAdapter<>(Home_Page.this, android.R.layout.simple_list_item_1,operations);
//        String password;
//        int bal;
//        String accNo;
//        accNo=getIntent().getStringExtra("accNo");
//        password=getIntent().getStringExtra("password");
//        bal=getIntent().getIntExtra("accBal",0);
//
//        Log.d("details",accNo + "   :   "+ password +"  :   "+ bal);

        searchList=findViewById(R.id.searchList);
        editSearch=findViewById(R.id.editSearch);

        searchList.setAdapter(adapter);
        editSearch.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                adapter.getFilter().filter(s);
            }

            @Override
            public void afterTextChanged(Editable s) {

            }
        });


    }
}