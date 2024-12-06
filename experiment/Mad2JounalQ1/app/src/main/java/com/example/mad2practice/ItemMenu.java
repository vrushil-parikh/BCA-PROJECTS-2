package com.example.mad2practice;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListView;
import java.util.ArrayList;

public class ItemMenu extends AppCompatActivity {

    ListView itemListView;
    int images[]={
            R.drawable.i3,
            R.drawable.pizza,
            R.drawable.whitepasta,
            R.drawable.rocket,
            R.drawable.pasta,
            R.drawable.bread
    };
    String names[]={
            "Veg Burger",
            "Pizza",
            "White Sauce Pasta",
            "Rocket Salad",
            "Alfredo Pasta",
            "Garlic Bread"
    };
    String itemDetail[]={
            "Veggie burgers are an all time favorite in my home. Anytime we are craving street food like burgers with french fries, I reach for this burger recipe." +
                    "Even though it takes some time to make homemade veggie patties, they are so much better than the store-bought ones, so it is totally worth it.",

            "Pizza, dish of italian origin consisting of a flattened disk" +
                    "if bread dough topper with some combination of olive oid," +
                    "oregano, tomato, olives, mozzarella or other cheese and many other ingredients," +
                    " baked quickly usually in a commercial settings, using a wood fired oven heated to a very high " +
                    "temperature and sered hot",


            "This White Sauce Pasta" +
                    "is cheesy and creamy." +
                    "filled with veggies like peppers, broccoli." +
                    "great way to make kids eat veggies!" +
                    "great for date nights, just pair with a homemade garlic bread for a complete meal." +
                    "also good to pack in lunch boxes.",


            "A simple Italian inspired rocket salad with radishes," +
                    " Parmesan and plenty of pine nuts for crunch." +
                    " All mixed with a classic balsamic dressing and ready in just 5 minutes." +
                    " Serve as a side, or top with chicken or fish for a main.",


            "Rich and creamy Fettuccine Alfredo is one of the easiest and most satisfying pasta dishes." +
                    " Fresh cream is combined with parmesan cheese and butter to make a luscious Alfredo sauce in only minutes." +
                    " It’s then tossed with your favorite past for a delicious and hearty vegetarian Italian dinner.",


            "It is typically made using a French baguette," +
                    " or sometimes ciabatta which is partially sliced downwards," +
                    " allowing the condiments to soak into the loaf while keeping it in one piece. The bread is then stuffed through the cuts with oil and minced garlic before baking. Alternatively, butter and garlic powder are used, or the bread is cut lengthwise into separate slices which are individually garnished."
    };
    String price[]={
            "₹159",
            "₹139",
            "₹189",
            "₹149",
            "₹179",
            "₹169"
    };
    String disc[]={
            "50% Off",
            "35% Off",
            "60% Off",
            "20% Off",
            "45% Off",
            "15% Off"
    };
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getSupportActionBar().hide();
        this.getWindow().setFlags(
                WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_item_menu);


        itemListView=findViewById(R.id.itemList);

        ArrayList<MenuModel> arrayList=new ArrayList<>();
        for (int i=0;i<disc.length*3;i++){
            MenuModel model=new MenuModel(
                    names[i%6],
                    itemDetail[i%6],
                    price[i%6],
                    disc[i%6],
                    images[i%6]
            );
            arrayList.add(model);
        }
        ItemListAdapter adapter=new ItemListAdapter(this,arrayList);
        itemListView.setAdapter(adapter);
        itemListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {

                Intent intent=new Intent(ItemMenu.this,ItemInfo.class);

                Bundle bundle=new Bundle();
                bundle.putString("itemName",arrayList.get(i).itemName);
                bundle.putString("itemDetail",arrayList.get(i).itemDetail);
                bundle.putString("itemPrice",arrayList.get(i).price);
                bundle.putString("itemDisc",arrayList.get(i).disText);
                bundle.putInt("itemImg",arrayList.get(i).imgId);

                intent.putExtra("itemInfo",bundle);

                startActivity(intent);
            }
        });


    }
}