package com.example.vickey;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class MainActivity extends AppCompatActivity {

    EditText accountNo,accountBal,accPassword;
    Button proceed;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getSupportActionBar().hide();
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_main);

        proceed=findViewById(R.id.btnProceed);
        accountBal=findViewById(R.id.editAccountBalance);
        accPassword=findViewById(R.id.editAccountPassword);
        accountNo=findViewById(R.id.editAccountNo);

        proceed.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int bal;
                String password=accPassword.getText().toString();
                String accNo=accountNo.getText().toString();
                if(accNo.length()!=14){
                    accountNo.setError("Invalid account no");
                    return;
                }
                if(password.length()<=0){
                    accPassword.setError("Enter the password");
                    return;
                }

                if(accountBal.getText().toString().length()<=0){
                    accountBal.setError("Enter the value");
                    return;
                }else{
                    bal=Integer.parseInt(accountBal.getText().toString());
                    if(bal<=0){
                        accountBal.setError("Enter the valid balance amount");
                        return;
                    }
                }

                Intent i=new Intent(MainActivity.this,Home_Page.class);
                i.putExtra("accNo",accNo);
                i.putExtra("accBal",bal);
                i.putExtra("password",password);
                startActivity(i);

            }
        });


        }

}