package com.cyjh.http.oss;

import android.content.Context;
import android.util.Log;
import com.alibaba.sdk.android.oss.ClientConfiguration;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.OSS;
import com.alibaba.sdk.android.oss.OSSClient;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.PutObjectRequest;
import com.alibaba.sdk.android.oss.model.PutObjectResult;
import com.cyjh.http.bean.response.AliCloudServerResponse;
import java.io.File;
import z2.a4;
import z2.j4;

/* JADX INFO: loaded from: classes.dex */
public class MyOSSUtils {
    private static String TAG = "MyOSSUtils";
    private AliCloudServerResponse aliCloudServerResponse;
    private Context mContext;
    private OSS oss;

    public static class Builder {
        private AliCloudServerResponse aliCloudServerResponse;
        private Context context;
        private int connectionTimeout = 15000;
        private int socketTimeout = 15000;
        private int maxConcurrentRequest = 5;
        private int maxErrorRetry = 2;

        public Builder(Context context, AliCloudServerResponse aliCloudServerResponse) {
            this.context = context;
            this.aliCloudServerResponse = aliCloudServerResponse;
        }

        public MyOSSUtils build() {
            return new MyOSSUtils(this);
        }

        public Builder setConnectionTimeout(int i) {
            this.connectionTimeout = i;
            return this;
        }

        public Builder setMaxConcurrentRequest(int i) {
            this.maxConcurrentRequest = i;
            return this;
        }

        public Builder setMaxErrorRetry(int i) {
            this.maxErrorRetry = i;
            return this;
        }

        public Builder setSocketTimeout(int i) {
            this.socketTimeout = i;
            return this;
        }
    }

    public interface UploadFileCallBack {
        void uploadFail(String str);

        void uploadProgress(long j, long j2);

        void uploadSuc(String str, String str2);
    }

    private MyOSSUtils(Builder builder) {
        this.aliCloudServerResponse = builder.aliCloudServerResponse;
        this.mContext = builder.context;
        MyOSSAuthCredentialsProvider myOSSAuthCredentialsProvider = new MyOSSAuthCredentialsProvider(this.aliCloudServerResponse);
        ClientConfiguration clientConfiguration = new ClientConfiguration();
        clientConfiguration.setConnectionTimeout(builder.connectionTimeout);
        clientConfiguration.setSocketTimeout(builder.socketTimeout);
        clientConfiguration.setMaxConcurrentRequest(builder.maxConcurrentRequest);
        clientConfiguration.setMaxErrorRetry(builder.maxErrorRetry);
        this.oss = new OSSClient(this.mContext, this.aliCloudServerResponse.OssEndpoint, myOSSAuthCredentialsProvider, clientConfiguration);
    }

    public boolean isTokenExpireTime() {
        try {
            if (this.aliCloudServerResponse != null) {
                return this.aliCloudServerResponse.AliCloundExpireTime.longValue() - Long.valueOf(System.currentTimeMillis() / 1000).longValue() < 3;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    public void uploadFile(String str, final String str2, final UploadFileCallBack uploadFileCallBack) {
        final File file = new File(str);
        if (file.exists()) {
            PutObjectRequest putObjectRequest = new PutObjectRequest(this.aliCloudServerResponse.OssBucket, str2, str);
            putObjectRequest.setProgressCallback(new OSSProgressCallback<PutObjectRequest>() { // from class: com.cyjh.http.oss.MyOSSUtils.1
                @Override // com.alibaba.sdk.android.oss.callback.OSSProgressCallback
                public void onProgress(PutObjectRequest putObjectRequest2, long j, long j2) {
                    uploadFileCallBack.uploadProgress(j, j2);
                }
            });
            this.oss.asyncPutObject(putObjectRequest, new OSSCompletedCallback<PutObjectRequest, PutObjectResult>() { // from class: com.cyjh.http.oss.MyOSSUtils.2
                @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
                public void onFailure(PutObjectRequest putObjectRequest2, ClientException clientException, ServiceException serviceException) {
                    uploadFileCallBack.uploadFail(file.getName());
                    File fileOooOOOO = a4.OooOOOO(MyOSSUtils.this.mContext);
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("message=");
                    stringBuffer.append(putObjectRequest2.toString());
                    j4.OooOoO0(fileOooOOOO, stringBuffer.toString(), "UTF-8", true);
                    if (clientException != null) {
                        String unused = MyOSSUtils.TAG;
                        String str3 = "uploadFile --> ex=" + clientException.getMessage();
                        stringBuffer.append("clientException=");
                        stringBuffer.append(clientException.getMessage());
                        stringBuffer.append("\n");
                        Log.e("zzz", "MyOSSUtils--uploadImage--clientException" + clientException.getMessage());
                        clientException.printStackTrace();
                        j4.OooOoO0(fileOooOOOO, stringBuffer.toString(), "UTF-8", true);
                    }
                    if (serviceException != null) {
                        Log.e("uploadImage--ErrorCode", serviceException.getErrorCode());
                        Log.e("uploadImage--RequestId", serviceException.getRequestId());
                        Log.e("uploadImage--HostId", serviceException.getHostId());
                        Log.e("uploadImage--RawMessage", serviceException.getRawMessage());
                        stringBuffer.append("ErrorCode=");
                        stringBuffer.append(serviceException.getErrorCode());
                        stringBuffer.append("\n");
                        stringBuffer.append("RequestId=");
                        stringBuffer.append(serviceException.getRequestId());
                        stringBuffer.append("\n");
                        stringBuffer.append("HostId=");
                        stringBuffer.append(serviceException.getHostId());
                        stringBuffer.append("\n");
                        stringBuffer.append("RawMessage=");
                        stringBuffer.append(serviceException.getRawMessage());
                        stringBuffer.append("\n\n\n");
                        j4.OooOoO0(fileOooOOOO, stringBuffer.toString(), "UTF-8", true);
                    }
                }

                @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
                public void onSuccess(PutObjectRequest putObjectRequest2, PutObjectResult putObjectResult) {
                    String strPresignPublicObjectURL = MyOSSUtils.this.oss.presignPublicObjectURL(MyOSSUtils.this.aliCloudServerResponse.OssBucket, str2);
                    String unused = MyOSSUtils.TAG;
                    String str3 = "onSuccess --> uploadOssUrl=" + strPresignPublicObjectURL;
                    uploadFileCallBack.uploadSuc(strPresignPublicObjectURL, file.getName());
                }
            });
        }
    }
}
