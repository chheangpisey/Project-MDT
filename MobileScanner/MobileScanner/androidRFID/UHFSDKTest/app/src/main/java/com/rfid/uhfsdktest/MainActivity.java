package com.rfid.uhfsdktest;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

import com.module.interaction.ModuleConnector;
import com.nativec.tools.ModuleManager;
import com.rfid.RFIDReaderHelper;
import com.rfid.ReaderConnector;
import com.rfid.rxobserver.RXObserver;
import com.rfid.rxobserver.bean.RXInventoryTag;

public class MainActivity extends AppCompatActivity {

    ModuleConnector connector = new ReaderConnector();
    RFIDReaderHelper mReader;

    RXObserver rxObserver = new RXObserver(){
        @Override
        protected void onInventoryTag(RXInventoryTag tag) {
            Log.d("TAG",tag.strEPC);
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        if (connector.connectCom("dev/ttyS4",115200)) {
            ModuleManager.newInstance().setUHFStatus(true);
            try {
                mReader = RFIDReaderHelper.getDefaultHelper();
                mReader.registerObserver(rxObserver);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mReader != null) {
            mReader.unRegisterObserver(rxObserver);
        }
        if (connector != null) {
            connector.disConnect();
        }

        ModuleManager.newInstance().setUHFStatus(false);
        ModuleManager.newInstance().release();
    }
}
