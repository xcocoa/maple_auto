package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.ListPartsRequest;
import com.alibaba.sdk.android.oss.model.ListPartsResult;
import com.alibaba.sdk.android.oss.model.PartETag;
import com.alibaba.sdk.android.oss.model.PartSummary;
import com.alibaba.sdk.android.oss.model.ResumableUploadRequest;
import com.alibaba.sdk.android.oss.model.ResumableUploadResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public class ResumableUploadTask extends BaseMultipartUploadTask<ResumableUploadRequest, ResumableUploadResult> implements Callable<ResumableUploadResult> {
    private List<Integer> mAlreadyUploadIndex;
    private long mFirstPartSize;
    private File mRecordFile;

    public ResumableUploadTask(ResumableUploadRequest resumableUploadRequest, OSSCompletedCallback<ResumableUploadRequest, ResumableUploadResult> oSSCompletedCallback, ExecutionContext executionContext, InternalRequestOperation internalRequestOperation) {
        super(internalRequestOperation, resumableUploadRequest, oSSCompletedCallback, executionContext);
        this.mAlreadyUploadIndex = new ArrayList();
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void abortThisUpload() {
        if (this.mUploadId != null) {
            this.mApiOperation.abortMultipartUpload(new AbortMultipartUploadRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId), null).waitUntilFinished();
        }
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void checkException() throws ServiceException, ClientException, IOException {
        if (this.mContext.getCancellationHandler().isCancelled() && ((ResumableUploadRequest) this.mRequest).deleteUploadOnCancelling().booleanValue()) {
            abortThisUpload();
            File file = this.mRecordFile;
            if (file != null) {
                file.delete();
            }
        }
        super.checkException();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public ResumableUploadResult doMultipartUpload() throws ServiceException, ClientException, InterruptedException, IOException {
        long j = this.mUploadedLength;
        checkCancel();
        int[] iArr = new int[2];
        checkPartSize(iArr);
        final int iMin = iArr[0];
        final int i = iArr[1];
        if (this.mPartETags.size() > 0 && this.mAlreadyUploadIndex.size() > 0) {
            long j2 = this.mUploadedLength;
            long j3 = this.mFileLength;
            if (j2 > j3) {
                throw new ClientException("The uploading file is inconsistent with before");
            }
            if (this.mFirstPartSize != iMin) {
                throw new ClientException("The part size setting is inconsistent with before");
            }
            OSSProgressCallback<Request> oSSProgressCallback = this.mProgressCallback;
            if (oSSProgressCallback != 0) {
                oSSProgressCallback.onProgress(this.mRequest, j2, j3);
            }
        }
        for (final int i2 = 0; i2 < i; i2++) {
            if ((this.mAlreadyUploadIndex.size() == 0 || !this.mAlreadyUploadIndex.contains(Integer.valueOf(i2 + 1))) && this.mPoolExecutor != null) {
                if (i2 == i - 1) {
                    iMin = (int) Math.min(iMin, this.mFileLength - j);
                }
                j += (long) iMin;
                this.mPoolExecutor.execute(new Runnable() { // from class: com.alibaba.sdk.android.oss.internal.ResumableUploadTask.1
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        ResumableUploadTask.this.uploadPart(i2, iMin, i);
                    }
                });
            }
        }
        if (checkWaitCondition(i)) {
            synchronized (this.mLock) {
                this.mLock.wait();
            }
        }
        checkException();
        CompleteMultipartUploadResult completeMultipartUploadResult = completeMultipartUploadResult();
        File file = this.mRecordFile;
        if (file != null && completeMultipartUploadResult != null) {
            file.delete();
        }
        releasePool();
        return new ResumableUploadResult(completeMultipartUploadResult);
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void initMultipartUploadId() throws ServiceException, ClientException, IOException {
        String uploadFilePath = ((ResumableUploadRequest) this.mRequest).getUploadFilePath();
        this.mUploadedLength = 0L;
        File file = new File(uploadFilePath);
        this.mUploadFile = file;
        long length = file.length();
        this.mFileLength = length;
        if (length == 0) {
            throw new ClientException("file length must not be 0");
        }
        if (!OSSUtils.isEmptyString(((ResumableUploadRequest) this.mRequest).getRecordDirectory())) {
            String strCalculateMd5Str = BinaryUtil.calculateMd5Str((BinaryUtil.calculateMd5Str(uploadFilePath) + ((ResumableUploadRequest) this.mRequest).getBucketName() + ((ResumableUploadRequest) this.mRequest).getObjectKey() + String.valueOf(((ResumableUploadRequest) this.mRequest).getPartSize())).getBytes());
            StringBuilder sb = new StringBuilder();
            sb.append(((ResumableUploadRequest) this.mRequest).getRecordDirectory());
            sb.append("/");
            sb.append(strCalculateMd5Str);
            File file2 = new File(sb.toString());
            this.mRecordFile = file2;
            if (file2.exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(this.mRecordFile));
                this.mUploadId = bufferedReader.readLine();
                bufferedReader.close();
                OSSLog.logDebug("[initUploadId] - Found record file, uploadid: " + this.mUploadId);
                OSSAsyncTask<ListPartsResult> oSSAsyncTaskListParts = this.mApiOperation.listParts(new ListPartsRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId), null);
                try {
                    List<PartSummary> parts = ((ListPartsResult) oSSAsyncTaskListParts.getResult()).getParts();
                    for (int i = 0; i < parts.size(); i++) {
                        PartSummary partSummary = parts.get(i);
                        this.mPartETags.add(new PartETag(partSummary.getPartNumber(), partSummary.getETag()));
                        this.mUploadedLength += partSummary.getSize();
                        this.mAlreadyUploadIndex.add(Integer.valueOf(partSummary.getPartNumber()));
                        if (i == 0) {
                            this.mFirstPartSize = partSummary.getSize();
                        }
                    }
                } catch (ClientException e) {
                    throw e;
                } catch (ServiceException e2) {
                    if (e2.getStatusCode() != 404) {
                        throw e2;
                    }
                    this.mUploadId = null;
                }
                oSSAsyncTaskListParts.waitUntilFinished();
            }
            if (!this.mRecordFile.exists() && !this.mRecordFile.createNewFile()) {
                throw new ClientException("Can't create file at path: " + this.mRecordFile.getAbsolutePath() + "\nPlease make sure the directory exist!");
            }
        }
        if (OSSUtils.isEmptyString(this.mUploadId)) {
            this.mUploadId = ((InitiateMultipartUploadResult) this.mApiOperation.initMultipartUpload(new InitiateMultipartUploadRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), ((ResumableUploadRequest) this.mRequest).getMetadata()), null).getResult()).getUploadId();
            if (this.mRecordFile != null) {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.mRecordFile));
                bufferedWriter.write(this.mUploadId);
                bufferedWriter.close();
            }
        }
        ((ResumableUploadRequest) this.mRequest).setUploadId(this.mUploadId);
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void processException(Exception exc) {
        synchronized (this.mLock) {
            this.mPartExceptionCount++;
            if (this.mUploadException == null || !exc.getMessage().equals(this.mUploadException.getMessage())) {
                this.mUploadException = exc;
            }
            OSSLog.logThrowable2Local(exc);
            if (this.mContext.getCancellationHandler().isCancelled() && !this.mIsCancel) {
                this.mIsCancel = true;
                this.mLock.notify();
            }
        }
    }
}
