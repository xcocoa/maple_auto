package com.cyjh.http.oss;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.common.auth.OSSFederationCredentialProvider;
import com.alibaba.sdk.android.oss.common.auth.OSSFederationToken;
import com.cyjh.http.bean.response.AliCloudServerResponse;

/* JADX INFO: loaded from: classes.dex */
public class MyOSSAuthCredentialsProvider extends OSSFederationCredentialProvider {
    private AliCloudServerResponse aliCloudServerResponse;
    private AuthDecoder mDecoder;

    public interface AuthDecoder {
        String decode(String str);
    }

    public MyOSSAuthCredentialsProvider(AliCloudServerResponse aliCloudServerResponse) {
        this.aliCloudServerResponse = aliCloudServerResponse;
    }

    @Override // com.alibaba.sdk.android.oss.common.auth.OSSFederationCredentialProvider
    public OSSFederationToken getFederationToken() {
        try {
            AliCloudServerResponse aliCloudServerResponse = this.aliCloudServerResponse;
            if (aliCloudServerResponse != null) {
                return new OSSFederationToken(aliCloudServerResponse.AliCloundAccessKeyId, aliCloudServerResponse.AliCloundAccessKeySecret, aliCloudServerResponse.AliCloundSecurityToken, aliCloudServerResponse.AliCloundExpireTime.longValue());
            }
            throw new ClientException("ErrorMessage: Token信息为null");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void setDecoder(AuthDecoder authDecoder) {
        this.mDecoder = authDecoder;
    }
}
