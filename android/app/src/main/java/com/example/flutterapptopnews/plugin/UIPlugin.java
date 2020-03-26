package com.example.flutterapptopnews.plugin;

import android.app.Activity;
import android.widget.Toast;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;

public class UIPlugin implements MethodChannel.MethodCallHandler {
    private static MethodChannel channel;
    private Activity activity;
    public static String CHANNEL="com.example.topnews.ui";

    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals("toast")){
            String text = methodCall.argument("text");
            Toast.makeText(activity, text, Toast.LENGTH_SHORT).show();
        }
    }
    private UIPlugin(Activity activity) {
        this.activity = activity;
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        channel = new MethodChannel(registrar.messenger(), CHANNEL);
        UIPlugin instance = new UIPlugin(registrar.activity());
        //setMethodCallHandler在此通道上接收方法调用的回调
        channel.setMethodCallHandler(instance);
    }
}
