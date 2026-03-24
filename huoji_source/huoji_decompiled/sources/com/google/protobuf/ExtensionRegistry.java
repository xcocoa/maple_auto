package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ExtensionRegistry extends ExtensionRegistryLite {
    private static final ExtensionRegistry EMPTY = new ExtensionRegistry(true);
    private final Map<String, ExtensionInfo> extensionsByName;
    private final Map<DescriptorIntPair, ExtensionInfo> extensionsByNumber;

    public static final class DescriptorIntPair {
        private final Descriptors.Descriptor descriptor;
        private final int number;

        public DescriptorIntPair(Descriptors.Descriptor descriptor, int i) {
            this.descriptor = descriptor;
            this.number = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof DescriptorIntPair)) {
                return false;
            }
            DescriptorIntPair descriptorIntPair = (DescriptorIntPair) obj;
            return this.descriptor == descriptorIntPair.descriptor && this.number == descriptorIntPair.number;
        }

        public final int hashCode() {
            return (this.descriptor.hashCode() * 65535) + this.number;
        }
    }

    public static final class ExtensionInfo {
        public final Message defaultInstance;
        public final Descriptors.FieldDescriptor descriptor;

        private ExtensionInfo(Descriptors.FieldDescriptor fieldDescriptor) {
            this.descriptor = fieldDescriptor;
            this.defaultInstance = null;
        }

        private ExtensionInfo(Descriptors.FieldDescriptor fieldDescriptor, Message message) {
            this.descriptor = fieldDescriptor;
            this.defaultInstance = message;
        }

        public /* synthetic */ ExtensionInfo(Descriptors.FieldDescriptor fieldDescriptor, Message message, ExtensionInfo extensionInfo) {
            this(fieldDescriptor, message);
        }
    }

    private ExtensionRegistry() {
        this.extensionsByName = new HashMap();
        this.extensionsByNumber = new HashMap();
    }

    private ExtensionRegistry(ExtensionRegistry extensionRegistry) {
        super(extensionRegistry);
        this.extensionsByName = Collections.unmodifiableMap(extensionRegistry.extensionsByName);
        this.extensionsByNumber = Collections.unmodifiableMap(extensionRegistry.extensionsByNumber);
    }

    private ExtensionRegistry(boolean z) {
        super(ExtensionRegistryLite.getEmptyRegistry());
        this.extensionsByName = Collections.emptyMap();
        this.extensionsByNumber = Collections.emptyMap();
    }

    private void add(ExtensionInfo extensionInfo) {
        if (!extensionInfo.descriptor.isExtension()) {
            throw new IllegalArgumentException("ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field.");
        }
        this.extensionsByName.put(extensionInfo.descriptor.getFullName(), extensionInfo);
        this.extensionsByNumber.put(new DescriptorIntPair(extensionInfo.descriptor.getContainingType(), extensionInfo.descriptor.getNumber()), extensionInfo);
        Descriptors.FieldDescriptor fieldDescriptor = extensionInfo.descriptor;
        if (fieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat() && fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && fieldDescriptor.isOptional() && fieldDescriptor.getExtensionScope() == fieldDescriptor.getMessageType()) {
            this.extensionsByName.put(fieldDescriptor.getMessageType().getFullName(), extensionInfo);
        }
    }

    public static ExtensionRegistry getEmptyRegistry() {
        return EMPTY;
    }

    public static ExtensionRegistry newInstance() {
        return new ExtensionRegistry();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void add(Descriptors.FieldDescriptor fieldDescriptor) {
        if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            throw new IllegalArgumentException("ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension.");
        }
        add(new ExtensionInfo(fieldDescriptor, null, 0 == true ? 1 : 0));
    }

    public final void add(Descriptors.FieldDescriptor fieldDescriptor, Message message) {
        if (fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            throw new IllegalArgumentException("ExtensionRegistry.add() provided a default instance for a non-message extension.");
        }
        add(new ExtensionInfo(fieldDescriptor, message, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void add(GeneratedMessage.GeneratedExtension<?, ?> generatedExtension) {
        ExtensionInfo extensionInfo;
        ExtensionInfo extensionInfo2 = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (generatedExtension.getDescriptor().getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            extensionInfo = new ExtensionInfo(generatedExtension.getDescriptor(), objArr2 == true ? 1 : 0, objArr == true ? 1 : 0);
        } else {
            if (generatedExtension.getMessageDefaultInstance() == null) {
                throw new IllegalStateException("Registered message-type extension had null default instance: " + generatedExtension.getDescriptor().getFullName());
            }
            extensionInfo = new ExtensionInfo(generatedExtension.getDescriptor(), generatedExtension.getMessageDefaultInstance(), extensionInfo2);
        }
        add(extensionInfo);
    }

    public final ExtensionInfo findExtensionByName(String str) {
        return this.extensionsByName.get(str);
    }

    public final ExtensionInfo findExtensionByNumber(Descriptors.Descriptor descriptor, int i) {
        return this.extensionsByNumber.get(new DescriptorIntPair(descriptor, i));
    }

    @Override // com.google.protobuf.ExtensionRegistryLite
    public final ExtensionRegistry getUnmodifiable() {
        return new ExtensionRegistry(this);
    }
}
