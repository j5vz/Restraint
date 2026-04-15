package com.j5vz.restraint;

import android.os.Bundle;
import com.getcapacitor.BridgeActivity;
import android.webkit.WebView;
import android.webkit.JavascriptInterface;
import android.content.Intent;
import android.net.Uri;

public class MainActivity extends BridgeActivity {
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        // this allows the webview to talk to your java code!!!
        WebView webView = this.getBridge().getWebView();
        webView.addJavascriptInterface(new Object() {
            @JavascriptInterface
            public void launch(String script) {
                Intent i = new Intent(Intent.ACTION_VIEW);
                i.setData(Uri.parse("robloxmobile://?launchTicket=1&script=" + script));
                i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(i);
            }
        }, "RestraintBridge");
    }
}

