package com.example.myapplication;

import static android.content.ContentValues.TAG;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class MainActivity extends AppCompatActivity {
    Button Forward;
    Button Backward;
    Button Left;
    Button Right;
    Button Servo;
    Button Manual;
    Button Auto;
    Button Auto_Manual;
    TextView Distance;
    FirebaseDatabase database = FirebaseDatabase.getInstance("https://altera-connection-default-rtdb.europe-west1.firebasedatabase.app");
    DatabaseReference To_Altera = database.getReference("to_altera");
    DatabaseReference From_Altera = database.getReference("From_altera");
    boolean check_manual = true;
    int cnt = 0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Forward = (Button) findViewById(R.id.forward);
        Backward = (Button) findViewById(R.id.Backward);
        Left = (Button) findViewById(R.id.Left);
        Right = (Button) findViewById(R.id.Right);
        //Manual = (Button) findViewById(R.id.Manual);
        //Auto = (Button) findViewById(R.id.Auto);
        Auto_Manual = (Button) findViewById(R.id.Auto_Manual);
        Servo = (Button) findViewById(R.id.Servo);
        Distance = (TextView) findViewById(R.id.Distance);
        Forward.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == MotionEvent.ACTION_UP) {
                        if(check_manual)
                        {
                            To_Altera.setValue(0);
                        }
                        return true;
                    }
                    else
                    {
                        if(check_manual)
                        {
                            To_Altera.setValue(5);
                        }
                    }
                    return false;
                }
            });
        Backward.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == MotionEvent.ACTION_UP) {
                        if(check_manual)
                        {
                            To_Altera.setValue(0);
                        }
                        return true;
                    }
                    else
                    {
                        if(check_manual)
                        {
                            To_Altera.setValue(10);
                        }
                    }
                    return false;
                }
            });
        Left.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == MotionEvent.ACTION_UP) {
                        if(check_manual)
                        {
                            To_Altera.setValue(0);
                        }
                        return true;
                    }
                    else
                    {
                        if(check_manual)
                        {
                            To_Altera.setValue(6);
                        }
                    }
                    return false;
                }
            });
        Right.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == MotionEvent.ACTION_UP) {
                        if(check_manual)
                        {
                            To_Altera.setValue(0);
                        }
                        return true;
                    }
                    else
                    {
                        if(check_manual)
                        {
                            To_Altera.setValue(9);
                        }
                    }
                    return false;
                }
            });
        Servo.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == MotionEvent.ACTION_UP) {
                        To_Altera.setValue(0);
                        return true;
                    } else To_Altera.setValue(16);
                    return false;
                }
            });
        get_dist();
        /*Auto.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                To_Altera.setValue(32);
                check_manual = false;
            }
        });
        Manual.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                To_Altera.setValue(0);
                check_manual = true;
            }
        });
         */
        Auto_Manual.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                cnt++;
                if (cnt % 2 == 0)
                {
                    To_Altera.setValue(0);
                    check_manual = true;
                }
                else
                {
                    To_Altera.setValue(32);
                    check_manual = false;
                }
            }
        });


    }
    private void get_dist()
    {
        From_Altera.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                if(dataSnapshot.exists())
                {
                    String data = dataSnapshot.getValue().toString();
                    Distance.setText("Distance: " + data);
                }
            }

            @Override
            public void onCancelled(DatabaseError error) {
                // Failed to read value
                Log.w(TAG, "Failed to read value.", error.toException());
            }
        });
    }
}
