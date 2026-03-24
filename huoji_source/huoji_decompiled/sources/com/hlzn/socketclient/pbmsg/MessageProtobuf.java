package com.hlzn.socketclient.pbmsg;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.Objects;
import z2.g6;

/* JADX INFO: loaded from: classes2.dex */
public final class MessageProtobuf {
    private static Descriptors.Descriptor OooO;
    private static Descriptors.Descriptor OooO00o;
    private static GeneratedMessage.FieldAccessorTable OooO0O0;
    private static Descriptors.Descriptor OooO0OO;
    private static GeneratedMessage.FieldAccessorTable OooO0Oo;
    private static GeneratedMessage.FieldAccessorTable OooO0o;
    private static Descriptors.Descriptor OooO0o0;
    private static Descriptors.Descriptor OooO0oO;
    private static GeneratedMessage.FieldAccessorTable OooO0oo;
    private static GeneratedMessage.FieldAccessorTable OooOO0;
    private static Descriptors.Descriptor OooOO0O;
    private static GeneratedMessage.FieldAccessorTable OooOO0o;
    private static GeneratedMessage.FieldAccessorTable OooOOO;
    private static Descriptors.Descriptor OooOOO0;
    private static Descriptors.Descriptor OooOOOO;
    private static GeneratedMessage.FieldAccessorTable OooOOOo;
    private static GeneratedMessage.FieldAccessorTable OooOOo;
    private static Descriptors.Descriptor OooOOo0;
    private static Descriptors.Descriptor OooOOoo;
    private static GeneratedMessage.FieldAccessorTable OooOo;
    private static Descriptors.Descriptor OooOo0;
    private static GeneratedMessage.FieldAccessorTable OooOo00;
    private static GeneratedMessage.FieldAccessorTable OooOo0O;
    private static Descriptors.Descriptor OooOo0o;
    private static GeneratedMessage.FieldAccessorTable OooOoO;
    private static Descriptors.Descriptor OooOoO0;
    private static Descriptors.Descriptor OooOoOO;
    private static Descriptors.Descriptor OooOoo;
    private static GeneratedMessage.FieldAccessorTable OooOoo0;
    private static GeneratedMessage.FieldAccessorTable OooOooO;
    private static Descriptors.Descriptor OooOooo;
    private static Descriptors.Descriptor Oooo0;
    private static GeneratedMessage.FieldAccessorTable Oooo000;
    private static Descriptors.Descriptor Oooo00O;
    private static GeneratedMessage.FieldAccessorTable Oooo00o;
    private static GeneratedMessage.FieldAccessorTable Oooo0O0;
    private static Descriptors.Descriptor Oooo0OO;
    private static Descriptors.Descriptor Oooo0o;
    private static GeneratedMessage.FieldAccessorTable Oooo0o0;
    private static GeneratedMessage.FieldAccessorTable Oooo0oO;
    private static Descriptors.FileDescriptor Oooo0oo;

    public static final class CmdRenameDeviceName extends GeneratedMessage implements CmdRenameDeviceNameOrBuilder {
        public static final int NEWDEVICENAME_FIELD_NUMBER = 1;
        public static Parser<CmdRenameDeviceName> PARSER = new AbstractParser<CmdRenameDeviceName>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceName.1
            @Override // com.google.protobuf.Parser
            public CmdRenameDeviceName parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdRenameDeviceName(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdRenameDeviceName defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object newDeviceName_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdRenameDeviceNameOrBuilder {
            private int bitField0_;
            private Object newDeviceName_;
            private long rpcId_;

            private Builder() {
                this.newDeviceName_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.newDeviceName_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.Oooo0OO;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdRenameDeviceName build() {
                CmdRenameDeviceName cmdRenameDeviceNameBuildPartial = buildPartial();
                if (cmdRenameDeviceNameBuildPartial.isInitialized()) {
                    return cmdRenameDeviceNameBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdRenameDeviceNameBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdRenameDeviceName buildPartial() {
                CmdRenameDeviceName cmdRenameDeviceName = new CmdRenameDeviceName(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdRenameDeviceName.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdRenameDeviceName.newDeviceName_ = this.newDeviceName_;
                cmdRenameDeviceName.bitField0_ = i2;
                onBuilt();
                return cmdRenameDeviceName;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.newDeviceName_ = "";
                this.bitField0_ = i & (-3);
                return this;
            }

            public Builder clearNewDeviceName() {
                this.bitField0_ &= -3;
                this.newDeviceName_ = CmdRenameDeviceName.getDefaultInstance().getNewDeviceName();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdRenameDeviceName getDefaultInstanceForType() {
                return CmdRenameDeviceName.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.Oooo0OO;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
            public String getNewDeviceName() {
                Object obj = this.newDeviceName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.newDeviceName_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
            public ByteString getNewDeviceNameBytes() {
                Object obj = this.newDeviceName_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.newDeviceName_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
            public boolean hasNewDeviceName() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.Oooo0o0.ensureFieldAccessorsInitialized(CmdRenameDeviceName.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasNewDeviceName();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdRenameDeviceName cmdRenameDeviceName = null;
                try {
                    try {
                        CmdRenameDeviceName partialFrom = CmdRenameDeviceName.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdRenameDeviceName cmdRenameDeviceName2 = (CmdRenameDeviceName) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdRenameDeviceName = cmdRenameDeviceName2;
                            if (cmdRenameDeviceName != null) {
                                mergeFrom(cmdRenameDeviceName);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdRenameDeviceName != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdRenameDeviceName) {
                    return mergeFrom((CmdRenameDeviceName) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdRenameDeviceName cmdRenameDeviceName) {
                if (cmdRenameDeviceName == CmdRenameDeviceName.getDefaultInstance()) {
                    return this;
                }
                if (cmdRenameDeviceName.hasRpcId()) {
                    setRpcId(cmdRenameDeviceName.getRpcId());
                }
                if (cmdRenameDeviceName.hasNewDeviceName()) {
                    this.bitField0_ |= 2;
                    this.newDeviceName_ = cmdRenameDeviceName.newDeviceName_;
                    onChanged();
                }
                mergeUnknownFields(cmdRenameDeviceName.getUnknownFields());
                return this;
            }

            public Builder setNewDeviceName(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 2;
                this.newDeviceName_ = str;
                onChanged();
                return this;
            }

            public Builder setNewDeviceNameBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 2;
                this.newDeviceName_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdRenameDeviceName cmdRenameDeviceName = new CmdRenameDeviceName(true);
            defaultInstance = cmdRenameDeviceName;
            cmdRenameDeviceName.initFields();
        }

        private CmdRenameDeviceName(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    this.bitField0_ |= 2;
                                    this.newDeviceName_ = codedInputStream.readBytes();
                                } else if (tag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdRenameDeviceName(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdRenameDeviceName(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdRenameDeviceName getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.Oooo0OO;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.newDeviceName_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdRenameDeviceName cmdRenameDeviceName) {
            return newBuilder().mergeFrom(cmdRenameDeviceName);
        }

        public static CmdRenameDeviceName parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdRenameDeviceName parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceName parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdRenameDeviceName parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdRenameDeviceName parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdRenameDeviceName parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceName parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdRenameDeviceName parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceName parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdRenameDeviceName parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdRenameDeviceName getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
        public String getNewDeviceName() {
            Object obj = this.newDeviceName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.newDeviceName_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
        public ByteString getNewDeviceNameBytes() {
            Object obj = this.newDeviceName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.newDeviceName_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdRenameDeviceName> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBytesSize = (this.bitField0_ & 2) == 2 ? 0 + CodedOutputStream.computeBytesSize(1, getNewDeviceNameBytes()) : 0;
            if ((this.bitField0_ & 1) == 1) {
                iComputeBytesSize += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            int serializedSize = iComputeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
        public boolean hasNewDeviceName() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.Oooo0o0.ensureFieldAccessorsInitialized(CmdRenameDeviceName.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasNewDeviceName()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(1, getNewDeviceNameBytes());
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdRenameDeviceNameOrBuilder extends MessageOrBuilder {
        String getNewDeviceName();

        ByteString getNewDeviceNameBytes();

        long getRpcId();

        boolean hasNewDeviceName();

        boolean hasRpcId();
    }

    public static final class CmdRenameDeviceNameResult extends GeneratedMessage implements CmdRenameDeviceNameResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdRenameDeviceNameResult> PARSER = new AbstractParser<CmdRenameDeviceNameResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResult.1
            @Override // com.google.protobuf.Parser
            public CmdRenameDeviceNameResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdRenameDeviceNameResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdRenameDeviceNameResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdRenameDeviceNameResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.Oooo0o;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdRenameDeviceNameResult build() {
                CmdRenameDeviceNameResult cmdRenameDeviceNameResultBuildPartial = buildPartial();
                if (cmdRenameDeviceNameResultBuildPartial.isInitialized()) {
                    return cmdRenameDeviceNameResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdRenameDeviceNameResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdRenameDeviceNameResult buildPartial() {
                CmdRenameDeviceNameResult cmdRenameDeviceNameResult = new CmdRenameDeviceNameResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdRenameDeviceNameResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdRenameDeviceNameResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdRenameDeviceNameResult.message_ = this.message_;
                cmdRenameDeviceNameResult.bitField0_ = i2;
                onBuilt();
                return cmdRenameDeviceNameResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.error_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.message_ = "";
                this.bitField0_ = i2 & (-5);
                return this;
            }

            public Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdRenameDeviceNameResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdRenameDeviceNameResult getDefaultInstanceForType() {
                return CmdRenameDeviceNameResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.Oooo0o;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.Oooo0oO.ensureFieldAccessorsInitialized(CmdRenameDeviceNameResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdRenameDeviceNameResult cmdRenameDeviceNameResult = null;
                try {
                    try {
                        CmdRenameDeviceNameResult partialFrom = CmdRenameDeviceNameResult.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdRenameDeviceNameResult cmdRenameDeviceNameResult2 = (CmdRenameDeviceNameResult) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdRenameDeviceNameResult = cmdRenameDeviceNameResult2;
                            if (cmdRenameDeviceNameResult != null) {
                                mergeFrom(cmdRenameDeviceNameResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdRenameDeviceNameResult != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdRenameDeviceNameResult) {
                    return mergeFrom((CmdRenameDeviceNameResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdRenameDeviceNameResult cmdRenameDeviceNameResult) {
                if (cmdRenameDeviceNameResult == CmdRenameDeviceNameResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdRenameDeviceNameResult.hasRpcId()) {
                    setRpcId(cmdRenameDeviceNameResult.getRpcId());
                }
                if (cmdRenameDeviceNameResult.hasError()) {
                    setError(cmdRenameDeviceNameResult.getError());
                }
                if (cmdRenameDeviceNameResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdRenameDeviceNameResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdRenameDeviceNameResult.getUnknownFields());
                return this;
            }

            public Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public Builder setMessage(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public Builder setMessageBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdRenameDeviceNameResult cmdRenameDeviceNameResult = new CmdRenameDeviceNameResult(true);
            defaultInstance = cmdRenameDeviceNameResult;
            cmdRenameDeviceNameResult.initFields();
        }

        private CmdRenameDeviceNameResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (tag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (tag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdRenameDeviceNameResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdRenameDeviceNameResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdRenameDeviceNameResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.Oooo0o;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdRenameDeviceNameResult cmdRenameDeviceNameResult) {
            return newBuilder().mergeFrom(cmdRenameDeviceNameResult);
        }

        public static CmdRenameDeviceNameResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdRenameDeviceNameResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceNameResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdRenameDeviceNameResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdRenameDeviceNameResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdRenameDeviceNameResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceNameResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdRenameDeviceNameResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdRenameDeviceNameResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdRenameDeviceNameResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdRenameDeviceNameResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdRenameDeviceNameResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = iComputeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdRenameDeviceNameResultOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.Oooo0oO.ensureFieldAccessorsInitialized(CmdRenameDeviceNameResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdRenameDeviceNameResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    public static final class CmdScreenCapture extends GeneratedMessage implements CmdScreenCaptureOrBuilder {
        public static Parser<CmdScreenCapture> PARSER = new AbstractParser<CmdScreenCapture>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCapture.1
            @Override // com.google.protobuf.Parser
            public CmdScreenCapture parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScreenCapture(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScreenCapture defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScreenCaptureOrBuilder {
            private int bitField0_;
            private long rpcId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOoo;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScreenCapture build() {
                CmdScreenCapture cmdScreenCaptureBuildPartial = buildPartial();
                if (cmdScreenCaptureBuildPartial.isInitialized()) {
                    return cmdScreenCaptureBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdScreenCaptureBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScreenCapture buildPartial() {
                CmdScreenCapture cmdScreenCapture = new CmdScreenCapture(this);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                cmdScreenCapture.rpcId_ = this.rpcId_;
                cmdScreenCapture.bitField0_ = i;
                onBuilt();
                return cmdScreenCapture;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdScreenCapture getDefaultInstanceForType() {
                return CmdScreenCapture.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOoo;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOooO.ensureFieldAccessorsInitialized(CmdScreenCapture.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdScreenCapture cmdScreenCapture = null;
                try {
                    try {
                        CmdScreenCapture partialFrom = CmdScreenCapture.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdScreenCapture cmdScreenCapture2 = (CmdScreenCapture) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdScreenCapture = cmdScreenCapture2;
                            if (cmdScreenCapture != null) {
                                mergeFrom(cmdScreenCapture);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdScreenCapture != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdScreenCapture) {
                    return mergeFrom((CmdScreenCapture) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdScreenCapture cmdScreenCapture) {
                if (cmdScreenCapture == CmdScreenCapture.getDefaultInstance()) {
                    return this;
                }
                if (cmdScreenCapture.hasRpcId()) {
                    setRpcId(cmdScreenCapture.getRpcId());
                }
                mergeUnknownFields(cmdScreenCapture.getUnknownFields());
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScreenCapture cmdScreenCapture = new CmdScreenCapture(true);
            defaultInstance = cmdScreenCapture;
            cmdScreenCapture.initFields();
        }

        private CmdScreenCapture(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScreenCapture(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScreenCapture(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScreenCapture getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOoo;
        }

        private void initFields() {
            this.rpcId_ = 0L;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdScreenCapture cmdScreenCapture) {
            return newBuilder().mergeFrom(cmdScreenCapture);
        }

        public static CmdScreenCapture parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScreenCapture parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScreenCapture parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScreenCapture parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScreenCapture parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScreenCapture parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScreenCapture parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScreenCapture parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScreenCapture parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScreenCapture parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdScreenCapture getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdScreenCapture> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = ((this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = iComputeInt64Size;
            return iComputeInt64Size;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOooO.ensureFieldAccessorsInitialized(CmdScreenCapture.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (hasRpcId()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdScreenCaptureOrBuilder extends MessageOrBuilder {
        long getRpcId();

        boolean hasRpcId();
    }

    public static final class CmdScreenCaptureResult extends GeneratedMessage implements CmdScreenCaptureResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdScreenCaptureResult> PARSER = new AbstractParser<CmdScreenCaptureResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResult.1
            @Override // com.google.protobuf.Parser
            public CmdScreenCaptureResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScreenCaptureResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScreenCaptureResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScreenCaptureResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOooo;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScreenCaptureResult build() {
                CmdScreenCaptureResult cmdScreenCaptureResultBuildPartial = buildPartial();
                if (cmdScreenCaptureResultBuildPartial.isInitialized()) {
                    return cmdScreenCaptureResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdScreenCaptureResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScreenCaptureResult buildPartial() {
                CmdScreenCaptureResult cmdScreenCaptureResult = new CmdScreenCaptureResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScreenCaptureResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScreenCaptureResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScreenCaptureResult.message_ = this.message_;
                cmdScreenCaptureResult.bitField0_ = i2;
                onBuilt();
                return cmdScreenCaptureResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.error_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.message_ = "";
                this.bitField0_ = i2 & (-5);
                return this;
            }

            public Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdScreenCaptureResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdScreenCaptureResult getDefaultInstanceForType() {
                return CmdScreenCaptureResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOooo;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.Oooo000.ensureFieldAccessorsInitialized(CmdScreenCaptureResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdScreenCaptureResult cmdScreenCaptureResult = null;
                try {
                    try {
                        CmdScreenCaptureResult partialFrom = CmdScreenCaptureResult.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdScreenCaptureResult cmdScreenCaptureResult2 = (CmdScreenCaptureResult) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdScreenCaptureResult = cmdScreenCaptureResult2;
                            if (cmdScreenCaptureResult != null) {
                                mergeFrom(cmdScreenCaptureResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdScreenCaptureResult != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdScreenCaptureResult) {
                    return mergeFrom((CmdScreenCaptureResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdScreenCaptureResult cmdScreenCaptureResult) {
                if (cmdScreenCaptureResult == CmdScreenCaptureResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdScreenCaptureResult.hasRpcId()) {
                    setRpcId(cmdScreenCaptureResult.getRpcId());
                }
                if (cmdScreenCaptureResult.hasError()) {
                    setError(cmdScreenCaptureResult.getError());
                }
                if (cmdScreenCaptureResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdScreenCaptureResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdScreenCaptureResult.getUnknownFields());
                return this;
            }

            public Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public Builder setMessage(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public Builder setMessageBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScreenCaptureResult cmdScreenCaptureResult = new CmdScreenCaptureResult(true);
            defaultInstance = cmdScreenCaptureResult;
            cmdScreenCaptureResult.initFields();
        }

        private CmdScreenCaptureResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (tag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (tag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScreenCaptureResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScreenCaptureResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScreenCaptureResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOooo;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdScreenCaptureResult cmdScreenCaptureResult) {
            return newBuilder().mergeFrom(cmdScreenCaptureResult);
        }

        public static CmdScreenCaptureResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScreenCaptureResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScreenCaptureResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScreenCaptureResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScreenCaptureResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScreenCaptureResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScreenCaptureResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScreenCaptureResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScreenCaptureResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScreenCaptureResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdScreenCaptureResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdScreenCaptureResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = iComputeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScreenCaptureResultOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.Oooo000.ensureFieldAccessorsInitialized(CmdScreenCaptureResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdScreenCaptureResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    public static final class CmdScriptSettings extends GeneratedMessage implements CmdScriptSettingsOrBuilder {
        public static Parser<CmdScriptSettings> PARSER = new AbstractParser<CmdScriptSettings>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettings.1
            @Override // com.google.protobuf.Parser
            public CmdScriptSettings parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptSettings(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        public static final int SCRIPTSETTINGS_FIELD_NUMBER = 1;
        private static final CmdScriptSettings defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private Object scriptSettings_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptSettingsOrBuilder {
            private int bitField0_;
            private long rpcId_;
            private Object scriptSettings_;

            private Builder() {
                this.scriptSettings_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.scriptSettings_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOoO0;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptSettings build() {
                CmdScriptSettings cmdScriptSettingsBuildPartial = buildPartial();
                if (cmdScriptSettingsBuildPartial.isInitialized()) {
                    return cmdScriptSettingsBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdScriptSettingsBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptSettings buildPartial() {
                CmdScriptSettings cmdScriptSettings = new CmdScriptSettings(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptSettings.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptSettings.scriptSettings_ = this.scriptSettings_;
                cmdScriptSettings.bitField0_ = i2;
                onBuilt();
                return cmdScriptSettings;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.scriptSettings_ = "";
                this.bitField0_ = i & (-3);
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearScriptSettings() {
                this.bitField0_ &= -3;
                this.scriptSettings_ = CmdScriptSettings.getDefaultInstance().getScriptSettings();
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdScriptSettings getDefaultInstanceForType() {
                return CmdScriptSettings.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOoO0;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
            public String getScriptSettings() {
                Object obj = this.scriptSettings_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.scriptSettings_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
            public ByteString getScriptSettingsBytes() {
                Object obj = this.scriptSettings_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.scriptSettings_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
            public boolean hasScriptSettings() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOoO.ensureFieldAccessorsInitialized(CmdScriptSettings.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasScriptSettings();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdScriptSettings cmdScriptSettings = null;
                try {
                    try {
                        CmdScriptSettings partialFrom = CmdScriptSettings.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdScriptSettings cmdScriptSettings2 = (CmdScriptSettings) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdScriptSettings = cmdScriptSettings2;
                            if (cmdScriptSettings != null) {
                                mergeFrom(cmdScriptSettings);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdScriptSettings != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptSettings) {
                    return mergeFrom((CmdScriptSettings) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdScriptSettings cmdScriptSettings) {
                if (cmdScriptSettings == CmdScriptSettings.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptSettings.hasRpcId()) {
                    setRpcId(cmdScriptSettings.getRpcId());
                }
                if (cmdScriptSettings.hasScriptSettings()) {
                    this.bitField0_ |= 2;
                    this.scriptSettings_ = cmdScriptSettings.scriptSettings_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptSettings.getUnknownFields());
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }

            public Builder setScriptSettings(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 2;
                this.scriptSettings_ = str;
                onChanged();
                return this;
            }

            public Builder setScriptSettingsBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 2;
                this.scriptSettings_ = byteString;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptSettings cmdScriptSettings = new CmdScriptSettings(true);
            defaultInstance = cmdScriptSettings;
            cmdScriptSettings.initFields();
        }

        private CmdScriptSettings(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    this.bitField0_ |= 2;
                                    this.scriptSettings_ = codedInputStream.readBytes();
                                } else if (tag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptSettings(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptSettings(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptSettings getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOoO0;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.scriptSettings_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdScriptSettings cmdScriptSettings) {
            return newBuilder().mergeFrom(cmdScriptSettings);
        }

        public static CmdScriptSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptSettings parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptSettings parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptSettings parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptSettings parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptSettings parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptSettings parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptSettings parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdScriptSettings getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdScriptSettings> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
        public String getScriptSettings() {
            Object obj = this.scriptSettings_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.scriptSettings_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
        public ByteString getScriptSettingsBytes() {
            Object obj = this.scriptSettings_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.scriptSettings_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBytesSize = (this.bitField0_ & 2) == 2 ? 0 + CodedOutputStream.computeBytesSize(1, getScriptSettingsBytes()) : 0;
            if ((this.bitField0_ & 1) == 1) {
                iComputeBytesSize += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            int serializedSize = iComputeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsOrBuilder
        public boolean hasScriptSettings() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOoO.ensureFieldAccessorsInitialized(CmdScriptSettings.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasScriptSettings()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(1, getScriptSettingsBytes());
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdScriptSettingsOrBuilder extends MessageOrBuilder {
        long getRpcId();

        String getScriptSettings();

        ByteString getScriptSettingsBytes();

        boolean hasRpcId();

        boolean hasScriptSettings();
    }

    public static final class CmdScriptSettingsResult extends GeneratedMessage implements CmdScriptSettingsResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdScriptSettingsResult> PARSER = new AbstractParser<CmdScriptSettingsResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResult.1
            @Override // com.google.protobuf.Parser
            public CmdScriptSettingsResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptSettingsResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptSettingsResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptSettingsResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOoOO;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptSettingsResult build() {
                CmdScriptSettingsResult cmdScriptSettingsResultBuildPartial = buildPartial();
                if (cmdScriptSettingsResultBuildPartial.isInitialized()) {
                    return cmdScriptSettingsResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdScriptSettingsResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptSettingsResult buildPartial() {
                CmdScriptSettingsResult cmdScriptSettingsResult = new CmdScriptSettingsResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptSettingsResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptSettingsResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScriptSettingsResult.message_ = this.message_;
                cmdScriptSettingsResult.bitField0_ = i2;
                onBuilt();
                return cmdScriptSettingsResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.error_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.message_ = "";
                this.bitField0_ = i2 & (-5);
                return this;
            }

            public Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdScriptSettingsResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdScriptSettingsResult getDefaultInstanceForType() {
                return CmdScriptSettingsResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOoOO;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOoo0.ensureFieldAccessorsInitialized(CmdScriptSettingsResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdScriptSettingsResult cmdScriptSettingsResult = null;
                try {
                    try {
                        CmdScriptSettingsResult partialFrom = CmdScriptSettingsResult.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdScriptSettingsResult cmdScriptSettingsResult2 = (CmdScriptSettingsResult) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdScriptSettingsResult = cmdScriptSettingsResult2;
                            if (cmdScriptSettingsResult != null) {
                                mergeFrom(cmdScriptSettingsResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdScriptSettingsResult != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptSettingsResult) {
                    return mergeFrom((CmdScriptSettingsResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdScriptSettingsResult cmdScriptSettingsResult) {
                if (cmdScriptSettingsResult == CmdScriptSettingsResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptSettingsResult.hasRpcId()) {
                    setRpcId(cmdScriptSettingsResult.getRpcId());
                }
                if (cmdScriptSettingsResult.hasError()) {
                    setError(cmdScriptSettingsResult.getError());
                }
                if (cmdScriptSettingsResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdScriptSettingsResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptSettingsResult.getUnknownFields());
                return this;
            }

            public Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public Builder setMessage(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public Builder setMessageBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptSettingsResult cmdScriptSettingsResult = new CmdScriptSettingsResult(true);
            defaultInstance = cmdScriptSettingsResult;
            cmdScriptSettingsResult.initFields();
        }

        private CmdScriptSettingsResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (tag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (tag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptSettingsResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptSettingsResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptSettingsResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOoOO;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdScriptSettingsResult cmdScriptSettingsResult) {
            return newBuilder().mergeFrom(cmdScriptSettingsResult);
        }

        public static CmdScriptSettingsResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptSettingsResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptSettingsResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptSettingsResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptSettingsResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptSettingsResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptSettingsResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptSettingsResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptSettingsResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptSettingsResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdScriptSettingsResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdScriptSettingsResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = iComputeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptSettingsResultOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOoo0.ensureFieldAccessorsInitialized(CmdScriptSettingsResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdScriptSettingsResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    public static final class CmdScriptStart extends GeneratedMessage implements CmdScriptStartOrBuilder {
        public static Parser<CmdScriptStart> PARSER = new AbstractParser<CmdScriptStart>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStart.1
            @Override // com.google.protobuf.Parser
            public CmdScriptStart parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptStart(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptStart defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptStartOrBuilder {
            private int bitField0_;
            private long rpcId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOOO0;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptStart build() {
                CmdScriptStart cmdScriptStartBuildPartial = buildPartial();
                if (cmdScriptStartBuildPartial.isInitialized()) {
                    return cmdScriptStartBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdScriptStartBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptStart buildPartial() {
                CmdScriptStart cmdScriptStart = new CmdScriptStart(this);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                cmdScriptStart.rpcId_ = this.rpcId_;
                cmdScriptStart.bitField0_ = i;
                onBuilt();
                return cmdScriptStart;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdScriptStart getDefaultInstanceForType() {
                return CmdScriptStart.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOOO0;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOOO.ensureFieldAccessorsInitialized(CmdScriptStart.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdScriptStart cmdScriptStart = null;
                try {
                    try {
                        CmdScriptStart partialFrom = CmdScriptStart.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdScriptStart cmdScriptStart2 = (CmdScriptStart) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdScriptStart = cmdScriptStart2;
                            if (cmdScriptStart != null) {
                                mergeFrom(cmdScriptStart);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdScriptStart != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptStart) {
                    return mergeFrom((CmdScriptStart) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdScriptStart cmdScriptStart) {
                if (cmdScriptStart == CmdScriptStart.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptStart.hasRpcId()) {
                    setRpcId(cmdScriptStart.getRpcId());
                }
                mergeUnknownFields(cmdScriptStart.getUnknownFields());
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptStart cmdScriptStart = new CmdScriptStart(true);
            defaultInstance = cmdScriptStart;
            cmdScriptStart.initFields();
        }

        private CmdScriptStart(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptStart(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptStart(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptStart getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOOO0;
        }

        private void initFields() {
            this.rpcId_ = 0L;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdScriptStart cmdScriptStart) {
            return newBuilder().mergeFrom(cmdScriptStart);
        }

        public static CmdScriptStart parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptStart parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStart parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptStart parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptStart parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptStart parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptStart parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptStart parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStart parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptStart parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdScriptStart getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdScriptStart> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = ((this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = iComputeInt64Size;
            return iComputeInt64Size;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOOO.ensureFieldAccessorsInitialized(CmdScriptStart.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (hasRpcId()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdScriptStartOrBuilder extends MessageOrBuilder {
        long getRpcId();

        boolean hasRpcId();
    }

    public static final class CmdScriptStartResult extends GeneratedMessage implements CmdScriptStartResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdScriptStartResult> PARSER = new AbstractParser<CmdScriptStartResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResult.1
            @Override // com.google.protobuf.Parser
            public CmdScriptStartResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptStartResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptStartResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptStartResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOOOO;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptStartResult build() {
                CmdScriptStartResult cmdScriptStartResultBuildPartial = buildPartial();
                if (cmdScriptStartResultBuildPartial.isInitialized()) {
                    return cmdScriptStartResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdScriptStartResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptStartResult buildPartial() {
                CmdScriptStartResult cmdScriptStartResult = new CmdScriptStartResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptStartResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptStartResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScriptStartResult.message_ = this.message_;
                cmdScriptStartResult.bitField0_ = i2;
                onBuilt();
                return cmdScriptStartResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.error_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.message_ = "";
                this.bitField0_ = i2 & (-5);
                return this;
            }

            public Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdScriptStartResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdScriptStartResult getDefaultInstanceForType() {
                return CmdScriptStartResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOOOO;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOOOo.ensureFieldAccessorsInitialized(CmdScriptStartResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdScriptStartResult cmdScriptStartResult = null;
                try {
                    try {
                        CmdScriptStartResult partialFrom = CmdScriptStartResult.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdScriptStartResult cmdScriptStartResult2 = (CmdScriptStartResult) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdScriptStartResult = cmdScriptStartResult2;
                            if (cmdScriptStartResult != null) {
                                mergeFrom(cmdScriptStartResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdScriptStartResult != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptStartResult) {
                    return mergeFrom((CmdScriptStartResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdScriptStartResult cmdScriptStartResult) {
                if (cmdScriptStartResult == CmdScriptStartResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptStartResult.hasRpcId()) {
                    setRpcId(cmdScriptStartResult.getRpcId());
                }
                if (cmdScriptStartResult.hasError()) {
                    setError(cmdScriptStartResult.getError());
                }
                if (cmdScriptStartResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdScriptStartResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptStartResult.getUnknownFields());
                return this;
            }

            public Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public Builder setMessage(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public Builder setMessageBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptStartResult cmdScriptStartResult = new CmdScriptStartResult(true);
            defaultInstance = cmdScriptStartResult;
            cmdScriptStartResult.initFields();
        }

        private CmdScriptStartResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (tag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (tag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptStartResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptStartResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptStartResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOOOO;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdScriptStartResult cmdScriptStartResult) {
            return newBuilder().mergeFrom(cmdScriptStartResult);
        }

        public static CmdScriptStartResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptStartResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStartResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptStartResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptStartResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptStartResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptStartResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptStartResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStartResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptStartResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdScriptStartResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdScriptStartResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = iComputeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStartResultOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOOOo.ensureFieldAccessorsInitialized(CmdScriptStartResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdScriptStartResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    public static final class CmdScriptStop extends GeneratedMessage implements CmdScriptStopOrBuilder {
        public static Parser<CmdScriptStop> PARSER = new AbstractParser<CmdScriptStop>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStop.1
            @Override // com.google.protobuf.Parser
            public CmdScriptStop parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptStop(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptStop defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptStopOrBuilder {
            private int bitField0_;
            private long rpcId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOOo0;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptStop build() {
                CmdScriptStop cmdScriptStopBuildPartial = buildPartial();
                if (cmdScriptStopBuildPartial.isInitialized()) {
                    return cmdScriptStopBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdScriptStopBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptStop buildPartial() {
                CmdScriptStop cmdScriptStop = new CmdScriptStop(this);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                cmdScriptStop.rpcId_ = this.rpcId_;
                cmdScriptStop.bitField0_ = i;
                onBuilt();
                return cmdScriptStop;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdScriptStop getDefaultInstanceForType() {
                return CmdScriptStop.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOOo0;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOOo.ensureFieldAccessorsInitialized(CmdScriptStop.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdScriptStop cmdScriptStop = null;
                try {
                    try {
                        CmdScriptStop partialFrom = CmdScriptStop.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdScriptStop cmdScriptStop2 = (CmdScriptStop) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdScriptStop = cmdScriptStop2;
                            if (cmdScriptStop != null) {
                                mergeFrom(cmdScriptStop);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdScriptStop != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptStop) {
                    return mergeFrom((CmdScriptStop) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdScriptStop cmdScriptStop) {
                if (cmdScriptStop == CmdScriptStop.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptStop.hasRpcId()) {
                    setRpcId(cmdScriptStop.getRpcId());
                }
                mergeUnknownFields(cmdScriptStop.getUnknownFields());
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptStop cmdScriptStop = new CmdScriptStop(true);
            defaultInstance = cmdScriptStop;
            cmdScriptStop.initFields();
        }

        private CmdScriptStop(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptStop(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptStop(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptStop getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOOo0;
        }

        private void initFields() {
            this.rpcId_ = 0L;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdScriptStop cmdScriptStop) {
            return newBuilder().mergeFrom(cmdScriptStop);
        }

        public static CmdScriptStop parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptStop parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStop parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptStop parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptStop parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptStop parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptStop parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptStop parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStop parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptStop parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdScriptStop getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdScriptStop> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = ((this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = iComputeInt64Size;
            return iComputeInt64Size;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOOo.ensureFieldAccessorsInitialized(CmdScriptStop.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (hasRpcId()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdScriptStopOrBuilder extends MessageOrBuilder {
        long getRpcId();

        boolean hasRpcId();
    }

    public static final class CmdScriptStopResult extends GeneratedMessage implements CmdScriptStopResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdScriptStopResult> PARSER = new AbstractParser<CmdScriptStopResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResult.1
            @Override // com.google.protobuf.Parser
            public CmdScriptStopResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptStopResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptStopResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptStopResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOOoo;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptStopResult build() {
                CmdScriptStopResult cmdScriptStopResultBuildPartial = buildPartial();
                if (cmdScriptStopResultBuildPartial.isInitialized()) {
                    return cmdScriptStopResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdScriptStopResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptStopResult buildPartial() {
                CmdScriptStopResult cmdScriptStopResult = new CmdScriptStopResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptStopResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptStopResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScriptStopResult.message_ = this.message_;
                cmdScriptStopResult.bitField0_ = i2;
                onBuilt();
                return cmdScriptStopResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.error_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.message_ = "";
                this.bitField0_ = i2 & (-5);
                return this;
            }

            public Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdScriptStopResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdScriptStopResult getDefaultInstanceForType() {
                return CmdScriptStopResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOOoo;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOo00.ensureFieldAccessorsInitialized(CmdScriptStopResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdScriptStopResult cmdScriptStopResult = null;
                try {
                    try {
                        CmdScriptStopResult partialFrom = CmdScriptStopResult.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdScriptStopResult cmdScriptStopResult2 = (CmdScriptStopResult) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdScriptStopResult = cmdScriptStopResult2;
                            if (cmdScriptStopResult != null) {
                                mergeFrom(cmdScriptStopResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdScriptStopResult != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptStopResult) {
                    return mergeFrom((CmdScriptStopResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdScriptStopResult cmdScriptStopResult) {
                if (cmdScriptStopResult == CmdScriptStopResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptStopResult.hasRpcId()) {
                    setRpcId(cmdScriptStopResult.getRpcId());
                }
                if (cmdScriptStopResult.hasError()) {
                    setError(cmdScriptStopResult.getError());
                }
                if (cmdScriptStopResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdScriptStopResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptStopResult.getUnknownFields());
                return this;
            }

            public Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public Builder setMessage(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public Builder setMessageBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptStopResult cmdScriptStopResult = new CmdScriptStopResult(true);
            defaultInstance = cmdScriptStopResult;
            cmdScriptStopResult.initFields();
        }

        private CmdScriptStopResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (tag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (tag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptStopResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptStopResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptStopResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOOoo;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdScriptStopResult cmdScriptStopResult) {
            return newBuilder().mergeFrom(cmdScriptStopResult);
        }

        public static CmdScriptStopResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptStopResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStopResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptStopResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptStopResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptStopResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptStopResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptStopResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptStopResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptStopResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdScriptStopResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdScriptStopResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = iComputeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptStopResultOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOo00.ensureFieldAccessorsInitialized(CmdScriptStopResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdScriptStopResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    public static final class CmdScriptUpgrade extends GeneratedMessage implements CmdScriptUpgradeOrBuilder {
        public static Parser<CmdScriptUpgrade> PARSER = new AbstractParser<CmdScriptUpgrade>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgrade.1
            @Override // com.google.protobuf.Parser
            public CmdScriptUpgrade parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptUpgrade(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        public static final int SCRIPTFILEURL_FIELD_NUMBER = 2;
        public static final int SCRIPTVERSION_FIELD_NUMBER = 1;
        private static final CmdScriptUpgrade defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private Object scriptFileUrl_;
        private long scriptVersion_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptUpgradeOrBuilder {
            private int bitField0_;
            private long rpcId_;
            private Object scriptFileUrl_;
            private long scriptVersion_;

            private Builder() {
                this.scriptFileUrl_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.scriptFileUrl_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOo0;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptUpgrade build() {
                CmdScriptUpgrade cmdScriptUpgradeBuildPartial = buildPartial();
                if (cmdScriptUpgradeBuildPartial.isInitialized()) {
                    return cmdScriptUpgradeBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdScriptUpgradeBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptUpgrade buildPartial() {
                CmdScriptUpgrade cmdScriptUpgrade = new CmdScriptUpgrade(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptUpgrade.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptUpgrade.scriptVersion_ = this.scriptVersion_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScriptUpgrade.scriptFileUrl_ = this.scriptFileUrl_;
                cmdScriptUpgrade.bitField0_ = i2;
                onBuilt();
                return cmdScriptUpgrade;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.scriptVersion_ = 0L;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.scriptFileUrl_ = "";
                this.bitField0_ = i2 & (-5);
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearScriptFileUrl() {
                this.bitField0_ &= -5;
                this.scriptFileUrl_ = CmdScriptUpgrade.getDefaultInstance().getScriptFileUrl();
                onChanged();
                return this;
            }

            public Builder clearScriptVersion() {
                this.bitField0_ &= -3;
                this.scriptVersion_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdScriptUpgrade getDefaultInstanceForType() {
                return CmdScriptUpgrade.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOo0;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public String getScriptFileUrl() {
                Object obj = this.scriptFileUrl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.scriptFileUrl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public ByteString getScriptFileUrlBytes() {
                Object obj = this.scriptFileUrl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.scriptFileUrl_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public long getScriptVersion() {
                return this.scriptVersion_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public boolean hasScriptFileUrl() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
            public boolean hasScriptVersion() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOo0O.ensureFieldAccessorsInitialized(CmdScriptUpgrade.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasScriptVersion() && hasScriptFileUrl();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdScriptUpgrade cmdScriptUpgrade = null;
                try {
                    try {
                        CmdScriptUpgrade partialFrom = CmdScriptUpgrade.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdScriptUpgrade cmdScriptUpgrade2 = (CmdScriptUpgrade) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdScriptUpgrade = cmdScriptUpgrade2;
                            if (cmdScriptUpgrade != null) {
                                mergeFrom(cmdScriptUpgrade);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdScriptUpgrade != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptUpgrade) {
                    return mergeFrom((CmdScriptUpgrade) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdScriptUpgrade cmdScriptUpgrade) {
                if (cmdScriptUpgrade == CmdScriptUpgrade.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptUpgrade.hasRpcId()) {
                    setRpcId(cmdScriptUpgrade.getRpcId());
                }
                if (cmdScriptUpgrade.hasScriptVersion()) {
                    setScriptVersion(cmdScriptUpgrade.getScriptVersion());
                }
                if (cmdScriptUpgrade.hasScriptFileUrl()) {
                    this.bitField0_ |= 4;
                    this.scriptFileUrl_ = cmdScriptUpgrade.scriptFileUrl_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptUpgrade.getUnknownFields());
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }

            public Builder setScriptFileUrl(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.scriptFileUrl_ = str;
                onChanged();
                return this;
            }

            public Builder setScriptFileUrlBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.scriptFileUrl_ = byteString;
                onChanged();
                return this;
            }

            public Builder setScriptVersion(long j) {
                this.bitField0_ |= 2;
                this.scriptVersion_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptUpgrade cmdScriptUpgrade = new CmdScriptUpgrade(true);
            defaultInstance = cmdScriptUpgrade;
            cmdScriptUpgrade.initFields();
        }

        private CmdScriptUpgrade(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.bitField0_ |= 2;
                                this.scriptVersion_ = codedInputStream.readInt64();
                            } else if (tag == 18) {
                                this.bitField0_ |= 4;
                                this.scriptFileUrl_ = codedInputStream.readBytes();
                            } else if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptUpgrade(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptUpgrade(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptUpgrade getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOo0;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.scriptVersion_ = 0L;
            this.scriptFileUrl_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdScriptUpgrade cmdScriptUpgrade) {
            return newBuilder().mergeFrom(cmdScriptUpgrade);
        }

        public static CmdScriptUpgrade parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptUpgrade parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgrade parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptUpgrade parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptUpgrade parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptUpgrade parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgrade parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptUpgrade parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgrade parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptUpgrade parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdScriptUpgrade getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdScriptUpgrade> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public String getScriptFileUrl() {
            Object obj = this.scriptFileUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.scriptFileUrl_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public ByteString getScriptFileUrlBytes() {
            Object obj = this.scriptFileUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.scriptFileUrl_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public long getScriptVersion() {
            return this.scriptVersion_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = (this.bitField0_ & 2) == 2 ? 0 + CodedOutputStream.computeInt64Size(1, this.scriptVersion_) : 0;
            if ((this.bitField0_ & 4) == 4) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(2, getScriptFileUrlBytes());
            }
            if ((this.bitField0_ & 1) == 1) {
                iComputeInt64Size += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            int serializedSize = iComputeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public boolean hasScriptFileUrl() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeOrBuilder
        public boolean hasScriptVersion() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOo0O.ensureFieldAccessorsInitialized(CmdScriptUpgrade.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasScriptVersion()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasScriptFileUrl()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt64(1, this.scriptVersion_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(2, getScriptFileUrlBytes());
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdScriptUpgradeOrBuilder extends MessageOrBuilder {
        long getRpcId();

        String getScriptFileUrl();

        ByteString getScriptFileUrlBytes();

        long getScriptVersion();

        boolean hasRpcId();

        boolean hasScriptFileUrl();

        boolean hasScriptVersion();
    }

    public static final class CmdScriptUpgradeResult extends GeneratedMessage implements CmdScriptUpgradeResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdScriptUpgradeResult> PARSER = new AbstractParser<CmdScriptUpgradeResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResult.1
            @Override // com.google.protobuf.Parser
            public CmdScriptUpgradeResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdScriptUpgradeResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdScriptUpgradeResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdScriptUpgradeResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOo0o;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptUpgradeResult build() {
                CmdScriptUpgradeResult cmdScriptUpgradeResultBuildPartial = buildPartial();
                if (cmdScriptUpgradeResultBuildPartial.isInitialized()) {
                    return cmdScriptUpgradeResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdScriptUpgradeResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdScriptUpgradeResult buildPartial() {
                CmdScriptUpgradeResult cmdScriptUpgradeResult = new CmdScriptUpgradeResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdScriptUpgradeResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdScriptUpgradeResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdScriptUpgradeResult.message_ = this.message_;
                cmdScriptUpgradeResult.bitField0_ = i2;
                onBuilt();
                return cmdScriptUpgradeResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.error_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.message_ = "";
                this.bitField0_ = i2 & (-5);
                return this;
            }

            public Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdScriptUpgradeResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdScriptUpgradeResult getDefaultInstanceForType() {
                return CmdScriptUpgradeResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOo0o;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOo.ensureFieldAccessorsInitialized(CmdScriptUpgradeResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdScriptUpgradeResult cmdScriptUpgradeResult = null;
                try {
                    try {
                        CmdScriptUpgradeResult partialFrom = CmdScriptUpgradeResult.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdScriptUpgradeResult cmdScriptUpgradeResult2 = (CmdScriptUpgradeResult) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdScriptUpgradeResult = cmdScriptUpgradeResult2;
                            if (cmdScriptUpgradeResult != null) {
                                mergeFrom(cmdScriptUpgradeResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdScriptUpgradeResult != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdScriptUpgradeResult) {
                    return mergeFrom((CmdScriptUpgradeResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdScriptUpgradeResult cmdScriptUpgradeResult) {
                if (cmdScriptUpgradeResult == CmdScriptUpgradeResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdScriptUpgradeResult.hasRpcId()) {
                    setRpcId(cmdScriptUpgradeResult.getRpcId());
                }
                if (cmdScriptUpgradeResult.hasError()) {
                    setError(cmdScriptUpgradeResult.getError());
                }
                if (cmdScriptUpgradeResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdScriptUpgradeResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdScriptUpgradeResult.getUnknownFields());
                return this;
            }

            public Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public Builder setMessage(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public Builder setMessageBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdScriptUpgradeResult cmdScriptUpgradeResult = new CmdScriptUpgradeResult(true);
            defaultInstance = cmdScriptUpgradeResult;
            cmdScriptUpgradeResult.initFields();
        }

        private CmdScriptUpgradeResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (tag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (tag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdScriptUpgradeResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdScriptUpgradeResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdScriptUpgradeResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOo0o;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdScriptUpgradeResult cmdScriptUpgradeResult) {
            return newBuilder().mergeFrom(cmdScriptUpgradeResult);
        }

        public static CmdScriptUpgradeResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdScriptUpgradeResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgradeResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdScriptUpgradeResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdScriptUpgradeResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdScriptUpgradeResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgradeResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdScriptUpgradeResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdScriptUpgradeResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdScriptUpgradeResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdScriptUpgradeResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdScriptUpgradeResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = iComputeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdScriptUpgradeResultOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOo.ensureFieldAccessorsInitialized(CmdScriptUpgradeResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdScriptUpgradeResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    public static final class CmdUnBindStudioProject extends GeneratedMessage implements CmdUnBindStudioProjectOrBuilder {
        public static Parser<CmdUnBindStudioProject> PARSER = new AbstractParser<CmdUnBindStudioProject>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProject.1
            @Override // com.google.protobuf.Parser
            public CmdUnBindStudioProject parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdUnBindStudioProject(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdUnBindStudioProject defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdUnBindStudioProjectOrBuilder {
            private int bitField0_;
            private long rpcId_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.Oooo00O;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdUnBindStudioProject build() {
                CmdUnBindStudioProject cmdUnBindStudioProjectBuildPartial = buildPartial();
                if (cmdUnBindStudioProjectBuildPartial.isInitialized()) {
                    return cmdUnBindStudioProjectBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdUnBindStudioProjectBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdUnBindStudioProject buildPartial() {
                CmdUnBindStudioProject cmdUnBindStudioProject = new CmdUnBindStudioProject(this);
                int i = (this.bitField0_ & 1) != 1 ? 0 : 1;
                cmdUnBindStudioProject.rpcId_ = this.rpcId_;
                cmdUnBindStudioProject.bitField0_ = i;
                onBuilt();
                return cmdUnBindStudioProject;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                this.bitField0_ &= -2;
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdUnBindStudioProject getDefaultInstanceForType() {
                return CmdUnBindStudioProject.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.Oooo00O;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.Oooo00o.ensureFieldAccessorsInitialized(CmdUnBindStudioProject.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdUnBindStudioProject cmdUnBindStudioProject = null;
                try {
                    try {
                        CmdUnBindStudioProject partialFrom = CmdUnBindStudioProject.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdUnBindStudioProject cmdUnBindStudioProject2 = (CmdUnBindStudioProject) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdUnBindStudioProject = cmdUnBindStudioProject2;
                            if (cmdUnBindStudioProject != null) {
                                mergeFrom(cmdUnBindStudioProject);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdUnBindStudioProject != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdUnBindStudioProject) {
                    return mergeFrom((CmdUnBindStudioProject) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdUnBindStudioProject cmdUnBindStudioProject) {
                if (cmdUnBindStudioProject == CmdUnBindStudioProject.getDefaultInstance()) {
                    return this;
                }
                if (cmdUnBindStudioProject.hasRpcId()) {
                    setRpcId(cmdUnBindStudioProject.getRpcId());
                }
                mergeUnknownFields(cmdUnBindStudioProject.getUnknownFields());
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdUnBindStudioProject cmdUnBindStudioProject = new CmdUnBindStudioProject(true);
            defaultInstance = cmdUnBindStudioProject;
            cmdUnBindStudioProject.initFields();
        }

        private CmdUnBindStudioProject(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdUnBindStudioProject(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdUnBindStudioProject(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdUnBindStudioProject getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.Oooo00O;
        }

        private void initFields() {
            this.rpcId_ = 0L;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdUnBindStudioProject cmdUnBindStudioProject) {
            return newBuilder().mergeFrom(cmdUnBindStudioProject);
        }

        public static CmdUnBindStudioProject parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdUnBindStudioProject parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProject parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdUnBindStudioProject parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdUnBindStudioProject parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdUnBindStudioProject parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProject parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdUnBindStudioProject parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProject parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdUnBindStudioProject parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdUnBindStudioProject getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdUnBindStudioProject> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = ((this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0) + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = iComputeInt64Size;
            return iComputeInt64Size;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.Oooo00o.ensureFieldAccessorsInitialized(CmdUnBindStudioProject.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (hasRpcId()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdUnBindStudioProjectOrBuilder extends MessageOrBuilder {
        long getRpcId();

        boolean hasRpcId();
    }

    public static final class CmdUnBindStudioProjectResult extends GeneratedMessage implements CmdUnBindStudioProjectResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<CmdUnBindStudioProjectResult> PARSER = new AbstractParser<CmdUnBindStudioProjectResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResult.1
            @Override // com.google.protobuf.Parser
            public CmdUnBindStudioProjectResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new CmdUnBindStudioProjectResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final CmdUnBindStudioProjectResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements CmdUnBindStudioProjectResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.Oooo0;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdUnBindStudioProjectResult build() {
                CmdUnBindStudioProjectResult cmdUnBindStudioProjectResultBuildPartial = buildPartial();
                if (cmdUnBindStudioProjectResultBuildPartial.isInitialized()) {
                    return cmdUnBindStudioProjectResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) cmdUnBindStudioProjectResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public CmdUnBindStudioProjectResult buildPartial() {
                CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult = new CmdUnBindStudioProjectResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                cmdUnBindStudioProjectResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                cmdUnBindStudioProjectResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                cmdUnBindStudioProjectResult.message_ = this.message_;
                cmdUnBindStudioProjectResult.bitField0_ = i2;
                onBuilt();
                return cmdUnBindStudioProjectResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.error_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.message_ = "";
                this.bitField0_ = i2 & (-5);
                return this;
            }

            public Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = CmdUnBindStudioProjectResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public CmdUnBindStudioProjectResult getDefaultInstanceForType() {
                return CmdUnBindStudioProjectResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.Oooo0;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.Oooo0O0.ensureFieldAccessorsInitialized(CmdUnBindStudioProjectResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult = null;
                try {
                    try {
                        CmdUnBindStudioProjectResult partialFrom = CmdUnBindStudioProjectResult.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult2 = (CmdUnBindStudioProjectResult) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cmdUnBindStudioProjectResult = cmdUnBindStudioProjectResult2;
                            if (cmdUnBindStudioProjectResult != null) {
                                mergeFrom(cmdUnBindStudioProjectResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cmdUnBindStudioProjectResult != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof CmdUnBindStudioProjectResult) {
                    return mergeFrom((CmdUnBindStudioProjectResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult) {
                if (cmdUnBindStudioProjectResult == CmdUnBindStudioProjectResult.getDefaultInstance()) {
                    return this;
                }
                if (cmdUnBindStudioProjectResult.hasRpcId()) {
                    setRpcId(cmdUnBindStudioProjectResult.getRpcId());
                }
                if (cmdUnBindStudioProjectResult.hasError()) {
                    setError(cmdUnBindStudioProjectResult.getError());
                }
                if (cmdUnBindStudioProjectResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = cmdUnBindStudioProjectResult.message_;
                    onChanged();
                }
                mergeUnknownFields(cmdUnBindStudioProjectResult.getUnknownFields());
                return this;
            }

            public Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public Builder setMessage(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public Builder setMessageBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult = new CmdUnBindStudioProjectResult(true);
            defaultInstance = cmdUnBindStudioProjectResult;
            cmdUnBindStudioProjectResult.initFields();
        }

        private CmdUnBindStudioProjectResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (tag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (tag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private CmdUnBindStudioProjectResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private CmdUnBindStudioProjectResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static CmdUnBindStudioProjectResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.Oooo0;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult) {
            return newBuilder().mergeFrom(cmdUnBindStudioProjectResult);
        }

        public static CmdUnBindStudioProjectResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static CmdUnBindStudioProjectResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProjectResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static CmdUnBindStudioProjectResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static CmdUnBindStudioProjectResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static CmdUnBindStudioProjectResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProjectResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static CmdUnBindStudioProjectResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static CmdUnBindStudioProjectResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static CmdUnBindStudioProjectResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public CmdUnBindStudioProjectResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<CmdUnBindStudioProjectResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = iComputeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.CmdUnBindStudioProjectResultOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.Oooo0O0.ensureFieldAccessorsInitialized(CmdUnBindStudioProjectResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface CmdUnBindStudioProjectResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    public static final class Heartbeat extends GeneratedMessage implements HeartbeatOrBuilder {
        public static Parser<Heartbeat> PARSER = new AbstractParser<Heartbeat>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.Heartbeat.1
            @Override // com.google.protobuf.Parser
            public Heartbeat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Heartbeat(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        public static final int SCRIPTRUNNING_FIELD_NUMBER = 1;
        private static final Heartbeat defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private boolean scriptRunning_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements HeartbeatOrBuilder {
            private int bitField0_;
            private long rpcId_;
            private boolean scriptRunning_;

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooO0o0;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Heartbeat build() {
                Heartbeat heartbeatBuildPartial = buildPartial();
                if (heartbeatBuildPartial.isInitialized()) {
                    return heartbeatBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) heartbeatBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Heartbeat buildPartial() {
                Heartbeat heartbeat = new Heartbeat(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                heartbeat.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                heartbeat.scriptRunning_ = this.scriptRunning_;
                heartbeat.bitField0_ = i2;
                onBuilt();
                return heartbeat;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.scriptRunning_ = false;
                this.bitField0_ = i & (-3);
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearScriptRunning() {
                this.bitField0_ &= -3;
                this.scriptRunning_ = false;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Heartbeat getDefaultInstanceForType() {
                return Heartbeat.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooO0o0;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
            public boolean getScriptRunning() {
                return this.scriptRunning_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
            public boolean hasScriptRunning() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooO0o.ensureFieldAccessorsInitialized(Heartbeat.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasScriptRunning();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                Heartbeat heartbeat = null;
                try {
                    try {
                        Heartbeat partialFrom = Heartbeat.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        Heartbeat heartbeat2 = (Heartbeat) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            heartbeat = heartbeat2;
                            if (heartbeat != null) {
                                mergeFrom(heartbeat);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (heartbeat != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Heartbeat) {
                    return mergeFrom((Heartbeat) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Heartbeat heartbeat) {
                if (heartbeat == Heartbeat.getDefaultInstance()) {
                    return this;
                }
                if (heartbeat.hasRpcId()) {
                    setRpcId(heartbeat.getRpcId());
                }
                if (heartbeat.hasScriptRunning()) {
                    setScriptRunning(heartbeat.getScriptRunning());
                }
                mergeUnknownFields(heartbeat.getUnknownFields());
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }

            public Builder setScriptRunning(boolean z) {
                this.bitField0_ |= 2;
                this.scriptRunning_ = z;
                onChanged();
                return this;
            }
        }

        static {
            Heartbeat heartbeat = new Heartbeat(true);
            defaultInstance = heartbeat;
            heartbeat.initFields();
        }

        private Heartbeat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.bitField0_ |= 2;
                                    this.scriptRunning_ = codedInputStream.readBool();
                                } else if (tag == 720) {
                                    this.bitField0_ |= 1;
                                    this.rpcId_ = codedInputStream.readInt64();
                                } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            throw new InvalidProtocolBufferException(e.getMessage()).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Heartbeat(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private Heartbeat(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Heartbeat getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooO0o0;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.scriptRunning_ = false;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(Heartbeat heartbeat) {
            return newBuilder().mergeFrom(heartbeat);
        }

        public static Heartbeat parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static Heartbeat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Heartbeat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Heartbeat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Heartbeat parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static Heartbeat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Heartbeat parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static Heartbeat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Heartbeat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Heartbeat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Heartbeat getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Heartbeat> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
        public boolean getScriptRunning() {
            return this.scriptRunning_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 2) == 2 ? 0 + CodedOutputStream.computeBoolSize(1, this.scriptRunning_) : 0;
            if ((this.bitField0_ & 1) == 1) {
                iComputeBoolSize += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            int serializedSize = iComputeBoolSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatOrBuilder
        public boolean hasScriptRunning() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooO0o.ensureFieldAccessorsInitialized(Heartbeat.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasScriptRunning()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBool(1, this.scriptRunning_);
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface HeartbeatOrBuilder extends MessageOrBuilder {
        long getRpcId();

        boolean getScriptRunning();

        boolean hasRpcId();

        boolean hasScriptRunning();
    }

    public static final class HeartbeatResult extends GeneratedMessage implements HeartbeatResultOrBuilder {
        public static final int DISABLED_FIELD_NUMBER = 1;
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<HeartbeatResult> PARSER = new AbstractParser<HeartbeatResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResult.1
            @Override // com.google.protobuf.Parser
            public HeartbeatResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new HeartbeatResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final HeartbeatResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private boolean disabled_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements HeartbeatResultOrBuilder {
            private int bitField0_;
            private boolean disabled_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooO0oO;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public HeartbeatResult build() {
                HeartbeatResult heartbeatResultBuildPartial = buildPartial();
                if (heartbeatResultBuildPartial.isInitialized()) {
                    return heartbeatResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) heartbeatResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public HeartbeatResult buildPartial() {
                HeartbeatResult heartbeatResult = new HeartbeatResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                heartbeatResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                heartbeatResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                heartbeatResult.message_ = this.message_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                heartbeatResult.disabled_ = this.disabled_;
                heartbeatResult.bitField0_ = i2;
                onBuilt();
                return heartbeatResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.error_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.message_ = "";
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.disabled_ = false;
                this.bitField0_ = i3 & (-9);
                return this;
            }

            public Builder clearDisabled() {
                this.bitField0_ &= -9;
                this.disabled_ = false;
                onChanged();
                return this;
            }

            public Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = HeartbeatResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public HeartbeatResult getDefaultInstanceForType() {
                return HeartbeatResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooO0oO;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public boolean getDisabled() {
                return this.disabled_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public boolean hasDisabled() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooO0oo.ensureFieldAccessorsInitialized(HeartbeatResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError() && hasDisabled();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                HeartbeatResult heartbeatResult = null;
                try {
                    try {
                        HeartbeatResult partialFrom = HeartbeatResult.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        HeartbeatResult heartbeatResult2 = (HeartbeatResult) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            heartbeatResult = heartbeatResult2;
                            if (heartbeatResult != null) {
                                mergeFrom(heartbeatResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (heartbeatResult != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof HeartbeatResult) {
                    return mergeFrom((HeartbeatResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(HeartbeatResult heartbeatResult) {
                if (heartbeatResult == HeartbeatResult.getDefaultInstance()) {
                    return this;
                }
                if (heartbeatResult.hasRpcId()) {
                    setRpcId(heartbeatResult.getRpcId());
                }
                if (heartbeatResult.hasError()) {
                    setError(heartbeatResult.getError());
                }
                if (heartbeatResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = heartbeatResult.message_;
                    onChanged();
                }
                if (heartbeatResult.hasDisabled()) {
                    setDisabled(heartbeatResult.getDisabled());
                }
                mergeUnknownFields(heartbeatResult.getUnknownFields());
                return this;
            }

            public Builder setDisabled(boolean z) {
                this.bitField0_ |= 8;
                this.disabled_ = z;
                onChanged();
                return this;
            }

            public Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public Builder setMessage(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public Builder setMessageBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            HeartbeatResult heartbeatResult = new HeartbeatResult(true);
            defaultInstance = heartbeatResult;
            heartbeatResult.initFields();
        }

        private HeartbeatResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.bitField0_ |= 8;
                                this.disabled_ = codedInputStream.readBool();
                            } else if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (tag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (tag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private HeartbeatResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private HeartbeatResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static HeartbeatResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooO0oO;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
            this.disabled_ = false;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(HeartbeatResult heartbeatResult) {
            return newBuilder().mergeFrom(heartbeatResult);
        }

        public static HeartbeatResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static HeartbeatResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static HeartbeatResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static HeartbeatResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static HeartbeatResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static HeartbeatResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static HeartbeatResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static HeartbeatResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static HeartbeatResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static HeartbeatResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public HeartbeatResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public boolean getDisabled() {
            return this.disabled_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<HeartbeatResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeBoolSize = (this.bitField0_ & 8) == 8 ? 0 + CodedOutputStream.computeBoolSize(1, this.disabled_) : 0;
            if ((this.bitField0_ & 1) == 1) {
                iComputeBoolSize += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                iComputeBoolSize += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeBoolSize += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = iComputeBoolSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public boolean hasDisabled() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.HeartbeatResultOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooO0oo.ensureFieldAccessorsInitialized(HeartbeatResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasError()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasDisabled()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBool(1, this.disabled_);
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface HeartbeatResultOrBuilder extends MessageOrBuilder {
        boolean getDisabled();

        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasDisabled();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    public static final class Login extends GeneratedMessage implements LoginOrBuilder {
        public static final int APPID_FIELD_NUMBER = 1;
        public static final int DEVICEID_FIELD_NUMBER = 3;
        public static final int IMTOKEN_FIELD_NUMBER = 4;
        public static Parser<Login> PARSER = new AbstractParser<Login>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.Login.1
            @Override // com.google.protobuf.Parser
            public Login parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Login(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        public static final int SCRIPTID_FIELD_NUMBER = 2;
        public static final int SCRIPTRUNNING_FIELD_NUMBER = 5;
        private static final Login defaultInstance;
        private static final long serialVersionUID = 0;
        private long appId_;
        private int bitField0_;
        private Object deviceId_;
        private Object iMToken_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private long rpcId_;
        private Object scriptId_;
        private boolean scriptRunning_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LoginOrBuilder {
            private long appId_;
            private int bitField0_;
            private Object deviceId_;
            private Object iMToken_;
            private long rpcId_;
            private Object scriptId_;
            private boolean scriptRunning_;

            private Builder() {
                this.scriptId_ = "";
                this.deviceId_ = "";
                this.iMToken_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.scriptId_ = "";
                this.deviceId_ = "";
                this.iMToken_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooO00o;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Login build() {
                Login loginBuildPartial = buildPartial();
                if (loginBuildPartial.isInitialized()) {
                    return loginBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) loginBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Login buildPartial() {
                Login login = new Login(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                login.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                login.appId_ = this.appId_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                login.scriptId_ = this.scriptId_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                login.deviceId_ = this.deviceId_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                login.iMToken_ = this.iMToken_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                login.scriptRunning_ = this.scriptRunning_;
                login.bitField0_ = i2;
                onBuilt();
                return login;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.appId_ = 0L;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.scriptId_ = "";
                int i3 = i2 & (-5);
                this.bitField0_ = i3;
                this.deviceId_ = "";
                int i4 = i3 & (-9);
                this.bitField0_ = i4;
                this.iMToken_ = "";
                int i5 = i4 & (-17);
                this.bitField0_ = i5;
                this.scriptRunning_ = false;
                this.bitField0_ = i5 & (-33);
                return this;
            }

            public Builder clearAppId() {
                this.bitField0_ &= -3;
                this.appId_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearDeviceId() {
                this.bitField0_ &= -9;
                this.deviceId_ = Login.getDefaultInstance().getDeviceId();
                onChanged();
                return this;
            }

            public Builder clearIMToken() {
                this.bitField0_ &= -17;
                this.iMToken_ = Login.getDefaultInstance().getIMToken();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearScriptId() {
                this.bitField0_ &= -5;
                this.scriptId_ = Login.getDefaultInstance().getScriptId();
                onChanged();
                return this;
            }

            public Builder clearScriptRunning() {
                this.bitField0_ &= -33;
                this.scriptRunning_ = false;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public long getAppId() {
                return this.appId_;
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public Login getDefaultInstanceForType() {
                return Login.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooO00o;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public String getDeviceId() {
                Object obj = this.deviceId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.deviceId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public ByteString getDeviceIdBytes() {
                Object obj = this.deviceId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deviceId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public String getIMToken() {
                Object obj = this.iMToken_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.iMToken_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public ByteString getIMTokenBytes() {
                Object obj = this.iMToken_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.iMToken_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public String getScriptId() {
                Object obj = this.scriptId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.scriptId_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public ByteString getScriptIdBytes() {
                Object obj = this.scriptId_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.scriptId_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public boolean getScriptRunning() {
                return this.scriptRunning_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public boolean hasAppId() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public boolean hasDeviceId() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public boolean hasIMToken() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public boolean hasScriptId() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
            public boolean hasScriptRunning() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooO0O0.ensureFieldAccessorsInitialized(Login.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasAppId() && hasScriptId() && hasDeviceId() && hasIMToken() && hasScriptRunning();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                Login login = null;
                try {
                    try {
                        Login partialFrom = Login.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        Login login2 = (Login) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            login = login2;
                            if (login != null) {
                                mergeFrom(login);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (login != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Login) {
                    return mergeFrom((Login) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Login login) {
                if (login == Login.getDefaultInstance()) {
                    return this;
                }
                if (login.hasRpcId()) {
                    setRpcId(login.getRpcId());
                }
                if (login.hasAppId()) {
                    setAppId(login.getAppId());
                }
                if (login.hasScriptId()) {
                    this.bitField0_ |= 4;
                    this.scriptId_ = login.scriptId_;
                    onChanged();
                }
                if (login.hasDeviceId()) {
                    this.bitField0_ |= 8;
                    this.deviceId_ = login.deviceId_;
                    onChanged();
                }
                if (login.hasIMToken()) {
                    this.bitField0_ |= 16;
                    this.iMToken_ = login.iMToken_;
                    onChanged();
                }
                if (login.hasScriptRunning()) {
                    setScriptRunning(login.getScriptRunning());
                }
                mergeUnknownFields(login.getUnknownFields());
                return this;
            }

            public Builder setAppId(long j) {
                this.bitField0_ |= 2;
                this.appId_ = j;
                onChanged();
                return this;
            }

            public Builder setDeviceId(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 8;
                this.deviceId_ = str;
                onChanged();
                return this;
            }

            public Builder setDeviceIdBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 8;
                this.deviceId_ = byteString;
                onChanged();
                return this;
            }

            public Builder setIMToken(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 16;
                this.iMToken_ = str;
                onChanged();
                return this;
            }

            public Builder setIMTokenBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 16;
                this.iMToken_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }

            public Builder setScriptId(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.scriptId_ = str;
                onChanged();
                return this;
            }

            public Builder setScriptIdBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.scriptId_ = byteString;
                onChanged();
                return this;
            }

            public Builder setScriptRunning(boolean z) {
                this.bitField0_ |= 32;
                this.scriptRunning_ = z;
                onChanged();
                return this;
            }
        }

        static {
            Login login = new Login(true);
            defaultInstance = login;
            login.initFields();
        }

        private Login(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.bitField0_ |= 2;
                                this.appId_ = codedInputStream.readInt64();
                            } else if (tag == 18) {
                                this.bitField0_ |= 4;
                                this.scriptId_ = codedInputStream.readBytes();
                            } else if (tag == 26) {
                                this.bitField0_ |= 8;
                                this.deviceId_ = codedInputStream.readBytes();
                            } else if (tag == 34) {
                                this.bitField0_ |= 16;
                                this.iMToken_ = codedInputStream.readBytes();
                            } else if (tag == 40) {
                                this.bitField0_ |= 32;
                                this.scriptRunning_ = codedInputStream.readBool();
                            } else if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Login(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private Login(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static Login getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooO00o;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.appId_ = 0L;
            this.scriptId_ = "";
            this.deviceId_ = "";
            this.iMToken_ = "";
            this.scriptRunning_ = false;
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(Login login) {
            return newBuilder().mergeFrom(login);
        }

        public static Login parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static Login parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static Login parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Login parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Login parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static Login parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Login parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static Login parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static Login parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Login parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public long getAppId() {
            return this.appId_;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Login getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public String getDeviceId() {
            Object obj = this.deviceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.deviceId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public ByteString getDeviceIdBytes() {
            Object obj = this.deviceId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.deviceId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public String getIMToken() {
            Object obj = this.iMToken_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.iMToken_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public ByteString getIMTokenBytes() {
            Object obj = this.iMToken_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.iMToken_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<Login> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public String getScriptId() {
            Object obj = this.scriptId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.scriptId_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public ByteString getScriptIdBytes() {
            Object obj = this.scriptId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.scriptId_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public boolean getScriptRunning() {
            return this.scriptRunning_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = (this.bitField0_ & 2) == 2 ? 0 + CodedOutputStream.computeInt64Size(1, this.appId_) : 0;
            if ((this.bitField0_ & 4) == 4) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(2, getScriptIdBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(3, getDeviceIdBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(4, getIMTokenBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                iComputeInt64Size += CodedOutputStream.computeBoolSize(5, this.scriptRunning_);
            }
            if ((this.bitField0_ & 1) == 1) {
                iComputeInt64Size += CodedOutputStream.computeInt64Size(90, this.rpcId_);
            }
            int serializedSize = iComputeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public boolean hasAppId() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public boolean hasDeviceId() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public boolean hasIMToken() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public boolean hasScriptId() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginOrBuilder
        public boolean hasScriptRunning() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooO0O0.ensureFieldAccessorsInitialized(Login.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasAppId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasScriptId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasDeviceId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasIMToken()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasScriptRunning()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt64(1, this.appId_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(2, getScriptIdBytes());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(3, getDeviceIdBytes());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeBytes(4, getIMTokenBytes());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeBool(5, this.scriptRunning_);
            }
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface LoginOrBuilder extends MessageOrBuilder {
        long getAppId();

        String getDeviceId();

        ByteString getDeviceIdBytes();

        String getIMToken();

        ByteString getIMTokenBytes();

        long getRpcId();

        String getScriptId();

        ByteString getScriptIdBytes();

        boolean getScriptRunning();

        boolean hasAppId();

        boolean hasDeviceId();

        boolean hasIMToken();

        boolean hasRpcId();

        boolean hasScriptId();

        boolean hasScriptRunning();
    }

    public static final class LoginResult extends GeneratedMessage implements LoginResultOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 91;
        public static final int MESSAGE_FIELD_NUMBER = 92;
        public static Parser<LoginResult> PARSER = new AbstractParser<LoginResult>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResult.1
            @Override // com.google.protobuf.Parser
            public LoginResult parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new LoginResult(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int RPCID_FIELD_NUMBER = 90;
        private static final LoginResult defaultInstance;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int error_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Object message_;
        private long rpcId_;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LoginResultOrBuilder {
            private int bitField0_;
            private int error_;
            private Object message_;
            private long rpcId_;

            private Builder() {
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.message_ = "";
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooO0OO;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LoginResult build() {
                LoginResult loginResultBuildPartial = buildPartial();
                if (loginResultBuildPartial.isInitialized()) {
                    return loginResultBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) loginResultBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LoginResult buildPartial() {
                LoginResult loginResult = new LoginResult(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                loginResult.rpcId_ = this.rpcId_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                loginResult.error_ = this.error_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                loginResult.message_ = this.message_;
                loginResult.bitField0_ = i2;
                onBuilt();
                return loginResult;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.rpcId_ = 0L;
                int i = this.bitField0_ & (-2);
                this.bitField0_ = i;
                this.error_ = 0;
                int i2 = i & (-3);
                this.bitField0_ = i2;
                this.message_ = "";
                this.bitField0_ = i2 & (-5);
                return this;
            }

            public Builder clearError() {
                this.bitField0_ &= -3;
                this.error_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMessage() {
                this.bitField0_ &= -5;
                this.message_ = LoginResult.getDefaultInstance().getMessage();
                onChanged();
                return this;
            }

            public Builder clearRpcId() {
                this.bitField0_ &= -2;
                this.rpcId_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LoginResult getDefaultInstanceForType() {
                return LoginResult.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooO0OO;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public int getError() {
                return this.error_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public String getMessage() {
                Object obj = this.message_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.message_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public ByteString getMessageBytes() {
                Object obj = this.message_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.message_ = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public long getRpcId() {
                return this.rpcId_;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public boolean hasError() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public boolean hasMessage() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
            public boolean hasRpcId() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooO0Oo.ensureFieldAccessorsInitialized(LoginResult.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return hasRpcId() && hasError();
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                LoginResult loginResult = null;
                try {
                    try {
                        LoginResult partialFrom = LoginResult.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        LoginResult loginResult2 = (LoginResult) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            loginResult = loginResult2;
                            if (loginResult != null) {
                                mergeFrom(loginResult);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (loginResult != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof LoginResult) {
                    return mergeFrom((LoginResult) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(LoginResult loginResult) {
                if (loginResult == LoginResult.getDefaultInstance()) {
                    return this;
                }
                if (loginResult.hasRpcId()) {
                    setRpcId(loginResult.getRpcId());
                }
                if (loginResult.hasError()) {
                    setError(loginResult.getError());
                }
                if (loginResult.hasMessage()) {
                    this.bitField0_ |= 4;
                    this.message_ = loginResult.message_;
                    onChanged();
                }
                mergeUnknownFields(loginResult.getUnknownFields());
                return this;
            }

            public Builder setError(int i) {
                this.bitField0_ |= 2;
                this.error_ = i;
                onChanged();
                return this;
            }

            public Builder setMessage(String str) {
                Objects.requireNonNull(str);
                this.bitField0_ |= 4;
                this.message_ = str;
                onChanged();
                return this;
            }

            public Builder setMessageBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.bitField0_ |= 4;
                this.message_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRpcId(long j) {
                this.bitField0_ |= 1;
                this.rpcId_ = j;
                onChanged();
                return this;
            }
        }

        static {
            LoginResult loginResult = new LoginResult(true);
            defaultInstance = loginResult;
            loginResult.initFields();
        }

        private LoginResult(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 720) {
                                this.bitField0_ |= 1;
                                this.rpcId_ = codedInputStream.readInt64();
                            } else if (tag == 728) {
                                this.bitField0_ |= 2;
                                this.error_ = codedInputStream.readInt32();
                            } else if (tag == 738) {
                                this.bitField0_ |= 4;
                                this.message_ = codedInputStream.readBytes();
                            } else if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private LoginResult(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private LoginResult(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LoginResult getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooO0OO;
        }

        private void initFields() {
            this.rpcId_ = 0L;
            this.error_ = 0;
            this.message_ = "";
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(LoginResult loginResult) {
            return newBuilder().mergeFrom(loginResult);
        }

        public static LoginResult parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static LoginResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LoginResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static LoginResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LoginResult parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static LoginResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static LoginResult parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static LoginResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LoginResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static LoginResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LoginResult getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public int getError() {
            return this.error_;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public String getMessage() {
            Object obj = this.message_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.message_ = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public ByteString getMessageBytes() {
            Object obj = this.message_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.message_ = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LoginResult> getParserForType() {
            return PARSER;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public long getRpcId() {
            return this.rpcId_;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iComputeInt64Size = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeInt64Size(90, this.rpcId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iComputeInt64Size += CodedOutputStream.computeInt32Size(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iComputeInt64Size += CodedOutputStream.computeBytesSize(92, getMessageBytes());
            }
            int serializedSize = iComputeInt64Size + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public boolean hasError() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public boolean hasMessage() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.hlzn.socketclient.pbmsg.MessageProtobuf.LoginResultOrBuilder
        public boolean hasRpcId() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooO0Oo.ensureFieldAccessorsInitialized(LoginResult.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            if (!hasRpcId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (hasError()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeInt64(90, this.rpcId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(91, this.error_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(92, getMessageBytes());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface LoginResultOrBuilder extends MessageOrBuilder {
        int getError();

        String getMessage();

        ByteString getMessageBytes();

        long getRpcId();

        boolean hasError();

        boolean hasMessage();

        boolean hasRpcId();
    }

    public static final class ScriptStart extends GeneratedMessage implements ScriptStartOrBuilder {
        public static Parser<ScriptStart> PARSER = new AbstractParser<ScriptStart>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStart.1
            @Override // com.google.protobuf.Parser
            public ScriptStart parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ScriptStart(codedInputStream, extensionRegistryLite);
            }
        };
        private static final ScriptStart defaultInstance;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ScriptStartOrBuilder {
            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooO;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ScriptStart build() {
                ScriptStart scriptStartBuildPartial = buildPartial();
                if (scriptStartBuildPartial.isInitialized()) {
                    return scriptStartBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) scriptStartBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ScriptStart buildPartial() {
                ScriptStart scriptStart = new ScriptStart(this);
                onBuilt();
                return scriptStart;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ScriptStart getDefaultInstanceForType() {
                return ScriptStart.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooO;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOO0.ensureFieldAccessorsInitialized(ScriptStart.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                ScriptStart scriptStart = null;
                try {
                    try {
                        ScriptStart partialFrom = ScriptStart.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        ScriptStart scriptStart2 = (ScriptStart) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            scriptStart = scriptStart2;
                            if (scriptStart != null) {
                                mergeFrom(scriptStart);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (scriptStart != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ScriptStart) {
                    return mergeFrom((ScriptStart) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ScriptStart scriptStart) {
                if (scriptStart == ScriptStart.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(scriptStart.getUnknownFields());
                return this;
            }
        }

        static {
            ScriptStart scriptStart = new ScriptStart(true);
            defaultInstance = scriptStart;
            scriptStart.initFields();
        }

        private ScriptStart(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag == 0 || !parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                z = true;
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private ScriptStart(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ScriptStart(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ScriptStart getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooO;
        }

        private void initFields() {
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(ScriptStart scriptStart) {
            return newBuilder().mergeFrom(scriptStart);
        }

        public static ScriptStart parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ScriptStart parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ScriptStart parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ScriptStart parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ScriptStart parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ScriptStart parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static ScriptStart parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static ScriptStart parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ScriptStart parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ScriptStart parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ScriptStart getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ScriptStart> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = getUnknownFields().getSerializedSize() + 0;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOO0.ensureFieldAccessorsInitialized(ScriptStart.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface ScriptStartOrBuilder extends MessageOrBuilder {
    }

    public static final class ScriptStop extends GeneratedMessage implements ScriptStopOrBuilder {
        public static Parser<ScriptStop> PARSER = new AbstractParser<ScriptStop>() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.ScriptStop.1
            @Override // com.google.protobuf.Parser
            public ScriptStop parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ScriptStop(codedInputStream, extensionRegistryLite);
            }
        };
        private static final ScriptStop defaultInstance;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        public static final class Builder extends GeneratedMessage.Builder<Builder> implements ScriptStopOrBuilder {
            private Builder() {
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static Builder create() {
                return new Builder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return MessageProtobuf.OooOO0O;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessage.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ScriptStop build() {
                ScriptStop scriptStopBuildPartial = buildPartial();
                if (scriptStopBuildPartial.isInitialized()) {
                    return scriptStopBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) scriptStopBuildPartial);
            }

            @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ScriptStop buildPartial() {
                ScriptStop scriptStop = new ScriptStop(this);
                onBuilt();
                return scriptStop;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                return this;
            }

            @Override // com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo6clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ScriptStop getDefaultInstanceForType() {
                return ScriptStop.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return MessageProtobuf.OooOO0O;
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder
            public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return MessageProtobuf.OooOO0o.ensureFieldAccessorsInitialized(ScriptStop.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                ScriptStop scriptStop = null;
                try {
                    try {
                        ScriptStop partialFrom = ScriptStop.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (partialFrom != null) {
                            mergeFrom(partialFrom);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        ScriptStop scriptStop2 = (ScriptStop) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            scriptStop = scriptStop2;
                            if (scriptStop != null) {
                                mergeFrom(scriptStop);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (scriptStop != null) {
                    }
                    throw th;
                }
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ScriptStop) {
                    return mergeFrom((ScriptStop) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ScriptStop scriptStop) {
                if (scriptStop == ScriptStop.getDefaultInstance()) {
                    return this;
                }
                mergeUnknownFields(scriptStop.getUnknownFields());
                return this;
            }
        }

        static {
            ScriptStop scriptStop = new ScriptStop(true);
            defaultInstance = scriptStop;
            scriptStop.initFields();
        }

        private ScriptStop(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag == 0 || !parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                z = true;
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private ScriptStop(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private ScriptStop(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static ScriptStop getDefaultInstance() {
            return defaultInstance;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return MessageProtobuf.OooOO0O;
        }

        private void initFields() {
        }

        public static Builder newBuilder() {
            return Builder.create();
        }

        public static Builder newBuilder(ScriptStop scriptStop) {
            return newBuilder().mergeFrom(scriptStop);
        }

        public static ScriptStop parseDelimitedFrom(InputStream inputStream) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream);
        }

        public static ScriptStop parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static ScriptStop parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ScriptStop parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ScriptStop parseFrom(CodedInputStream codedInputStream) throws IOException {
            return PARSER.parseFrom(codedInputStream);
        }

        public static ScriptStop parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static ScriptStop parseFrom(InputStream inputStream) throws IOException {
            return PARSER.parseFrom(inputStream);
        }

        public static ScriptStop parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static ScriptStop parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ScriptStop parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ScriptStop getDefaultInstanceForType() {
            return defaultInstance;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ScriptStop> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int serializedSize = getUnknownFields().getSerializedSize() + 0;
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.GeneratedMessage
        public GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return MessageProtobuf.OooOO0o.ensureFieldAccessorsInitialized(ScriptStop.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b != -1) {
                return b == 1;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return newBuilder(this);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            getUnknownFields().writeTo(codedOutputStream);
        }
    }

    public interface ScriptStopOrBuilder extends MessageOrBuilder {
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0015MessageProtobuf.proto\u0012\u001bcom.hlzn.socketclient.pbmsg\"q\n\u0005Login\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005AppId\u0018\u0001 \u0002(\u0003\u0012\u0010\n\bScriptId\u0018\u0002 \u0002(\t\u0012\u0010\n\bDeviceId\u0018\u0003 \u0002(\t\u0012\u000f\n\u0007IMToken\u0018\u0004 \u0002(\t\u0012\u0015\n\rScriptRunning\u0018\u0005 \u0002(\b\"<\n\u000bLoginResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\"1\n\tHeartbeat\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\u0015\n\rScriptRunning\u0018\u0001 \u0002(\b\"R\n\u000fHeartbeatResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\u0012\u0010\n\bDisabled\u0018\u0001 \u0002(\b\"\r\n\u000bScriptStart\"\f\n\nScriptStop\"\u001f\n\u000eCmd", "ScriptStart\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\"E\n\u0014CmdScriptStartResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\"\u001e\n\rCmdScriptStop\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\"D\n\u0013CmdScriptStopResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\"O\n\u0010CmdScriptUpgrade\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\u0015\n\rScriptVersion\u0018\u0001 \u0002(\u0003\u0012\u0015\n\rScriptFileUrl\u0018\u0002 \u0002(\t\"G\n\u0016CmdScriptUpgradeResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\":\n\u0011CmdScriptSettings\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\u0016\n\u000eScriptS", "ettings\u0018\u0001 \u0002(\t\"H\n\u0017CmdScriptSettingsResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\"!\n\u0010CmdScreenCapture\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\"G\n\u0016CmdScreenCaptureResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\"'\n\u0016CmdUnBindStudioProject\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\"M\n\u001cCmdUnBindStudioProjectResult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t\";\n\u0013CmdRenameDeviceName\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\u0015\n\rNewDeviceName\u0018\u0001 \u0002(\t\"J\n\u0019CmdRenameDeviceNameR", "esult\u0012\r\n\u0005RpcId\u0018Z \u0002(\u0003\u0012\r\n\u0005Error\u0018[ \u0002(\u0005\u0012\u000f\n\u0007Message\u0018\\ \u0001(\t"}, new Descriptors.FileDescriptor[0], new Descriptors.FileDescriptor.InternalDescriptorAssigner() { // from class: com.hlzn.socketclient.pbmsg.MessageProtobuf.1
            @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
            public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
                Descriptors.FileDescriptor unused = MessageProtobuf.Oooo0oo = fileDescriptor;
                Descriptors.Descriptor unused2 = MessageProtobuf.OooO00o = MessageProtobuf.o000000().getMessageTypes().get(0);
                GeneratedMessage.FieldAccessorTable unused3 = MessageProtobuf.OooO0O0 = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooO00o, new String[]{"RpcId", "AppId", "ScriptId", "DeviceId", "IMToken", "ScriptRunning"});
                Descriptors.Descriptor unused4 = MessageProtobuf.OooO0OO = MessageProtobuf.o000000().getMessageTypes().get(1);
                GeneratedMessage.FieldAccessorTable unused5 = MessageProtobuf.OooO0Oo = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooO0OO, new String[]{"RpcId", "Error", g6.OooO0Oo});
                Descriptors.Descriptor unused6 = MessageProtobuf.OooO0o0 = MessageProtobuf.o000000().getMessageTypes().get(2);
                GeneratedMessage.FieldAccessorTable unused7 = MessageProtobuf.OooO0o = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooO0o0, new String[]{"RpcId", "ScriptRunning"});
                Descriptors.Descriptor unused8 = MessageProtobuf.OooO0oO = MessageProtobuf.o000000().getMessageTypes().get(3);
                GeneratedMessage.FieldAccessorTable unused9 = MessageProtobuf.OooO0oo = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooO0oO, new String[]{"RpcId", "Error", g6.OooO0Oo, "Disabled"});
                Descriptors.Descriptor unused10 = MessageProtobuf.OooO = MessageProtobuf.o000000().getMessageTypes().get(4);
                GeneratedMessage.FieldAccessorTable unused11 = MessageProtobuf.OooOO0 = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooO, new String[0]);
                Descriptors.Descriptor unused12 = MessageProtobuf.OooOO0O = MessageProtobuf.o000000().getMessageTypes().get(5);
                GeneratedMessage.FieldAccessorTable unused13 = MessageProtobuf.OooOO0o = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOO0O, new String[0]);
                Descriptors.Descriptor unused14 = MessageProtobuf.OooOOO0 = MessageProtobuf.o000000().getMessageTypes().get(6);
                GeneratedMessage.FieldAccessorTable unused15 = MessageProtobuf.OooOOO = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOOO0, new String[]{"RpcId"});
                Descriptors.Descriptor unused16 = MessageProtobuf.OooOOOO = MessageProtobuf.o000000().getMessageTypes().get(7);
                GeneratedMessage.FieldAccessorTable unused17 = MessageProtobuf.OooOOOo = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOOOO, new String[]{"RpcId", "Error", g6.OooO0Oo});
                Descriptors.Descriptor unused18 = MessageProtobuf.OooOOo0 = MessageProtobuf.o000000().getMessageTypes().get(8);
                GeneratedMessage.FieldAccessorTable unused19 = MessageProtobuf.OooOOo = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOOo0, new String[]{"RpcId"});
                Descriptors.Descriptor unused20 = MessageProtobuf.OooOOoo = MessageProtobuf.o000000().getMessageTypes().get(9);
                GeneratedMessage.FieldAccessorTable unused21 = MessageProtobuf.OooOo00 = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOOoo, new String[]{"RpcId", "Error", g6.OooO0Oo});
                Descriptors.Descriptor unused22 = MessageProtobuf.OooOo0 = MessageProtobuf.o000000().getMessageTypes().get(10);
                GeneratedMessage.FieldAccessorTable unused23 = MessageProtobuf.OooOo0O = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOo0, new String[]{"RpcId", "ScriptVersion", "ScriptFileUrl"});
                Descriptors.Descriptor unused24 = MessageProtobuf.OooOo0o = MessageProtobuf.o000000().getMessageTypes().get(11);
                GeneratedMessage.FieldAccessorTable unused25 = MessageProtobuf.OooOo = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOo0o, new String[]{"RpcId", "Error", g6.OooO0Oo});
                Descriptors.Descriptor unused26 = MessageProtobuf.OooOoO0 = MessageProtobuf.o000000().getMessageTypes().get(12);
                GeneratedMessage.FieldAccessorTable unused27 = MessageProtobuf.OooOoO = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOoO0, new String[]{"RpcId", "ScriptSettings"});
                Descriptors.Descriptor unused28 = MessageProtobuf.OooOoOO = MessageProtobuf.o000000().getMessageTypes().get(13);
                GeneratedMessage.FieldAccessorTable unused29 = MessageProtobuf.OooOoo0 = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOoOO, new String[]{"RpcId", "Error", g6.OooO0Oo});
                Descriptors.Descriptor unused30 = MessageProtobuf.OooOoo = MessageProtobuf.o000000().getMessageTypes().get(14);
                GeneratedMessage.FieldAccessorTable unused31 = MessageProtobuf.OooOooO = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOoo, new String[]{"RpcId"});
                Descriptors.Descriptor unused32 = MessageProtobuf.OooOooo = MessageProtobuf.o000000().getMessageTypes().get(15);
                GeneratedMessage.FieldAccessorTable unused33 = MessageProtobuf.Oooo000 = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.OooOooo, new String[]{"RpcId", "Error", g6.OooO0Oo});
                Descriptors.Descriptor unused34 = MessageProtobuf.Oooo00O = MessageProtobuf.o000000().getMessageTypes().get(16);
                GeneratedMessage.FieldAccessorTable unused35 = MessageProtobuf.Oooo00o = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.Oooo00O, new String[]{"RpcId"});
                Descriptors.Descriptor unused36 = MessageProtobuf.Oooo0 = MessageProtobuf.o000000().getMessageTypes().get(17);
                GeneratedMessage.FieldAccessorTable unused37 = MessageProtobuf.Oooo0O0 = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.Oooo0, new String[]{"RpcId", "Error", g6.OooO0Oo});
                Descriptors.Descriptor unused38 = MessageProtobuf.Oooo0OO = MessageProtobuf.o000000().getMessageTypes().get(18);
                GeneratedMessage.FieldAccessorTable unused39 = MessageProtobuf.Oooo0o0 = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.Oooo0OO, new String[]{"RpcId", "NewDeviceName"});
                Descriptors.Descriptor unused40 = MessageProtobuf.Oooo0o = MessageProtobuf.o000000().getMessageTypes().get(19);
                GeneratedMessage.FieldAccessorTable unused41 = MessageProtobuf.Oooo0oO = new GeneratedMessage.FieldAccessorTable(MessageProtobuf.Oooo0o, new String[]{"RpcId", "Error", g6.OooO0Oo});
                return null;
            }
        });
    }

    private MessageProtobuf() {
    }

    public static Descriptors.FileDescriptor o000000() {
        return Oooo0oo;
    }

    public static void o000000O(ExtensionRegistry extensionRegistry) {
    }
}
