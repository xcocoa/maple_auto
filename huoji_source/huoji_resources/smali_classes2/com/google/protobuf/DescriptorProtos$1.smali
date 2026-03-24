.class public Lcom/google/protobuf/DescriptorProtos$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 13

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$0(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$1(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "File"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$3(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$4(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Package"

    const-string v4, "Dependency"

    const-string v5, "PublicDependency"

    const-string v6, "WeakDependency"

    const-string v7, "MessageType"

    const-string v8, "EnumType"

    const-string v9, "Service"

    const-string v10, "Extension"

    const-string v11, "Options"

    const-string v12, "SourceCodeInfo"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$6(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$7(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$8()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Field"

    const-string v4, "Extension"

    const-string v5, "NestedType"

    const-string v6, "EnumType"

    const-string v7, "ExtensionRange"

    const-string v8, "Options"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$9(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$8()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$10(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$11()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Start"

    const-string v3, "End"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$12(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$13(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$14()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Number"

    const-string v4, "Label"

    const-string v5, "Type"

    const-string v6, "TypeName"

    const-string v7, "Extendee"

    const-string v8, "DefaultValue"

    const-string v9, "Options"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$15(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$16(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$17()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Value"

    const-string v4, "Options"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const-class v6, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {p1, v1, v3, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$18(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$19(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$20()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v3, "Number"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const-class v6, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {p1, v1, v3, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$21(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$22(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$23()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v3, "Method"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const-class v6, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-direct {p1, v1, v3, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$24(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$25(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$26()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v3, "InputType"

    const-string v5, "OutputType"

    filled-new-array {v2, v3, v5, v4}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$27(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$28(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$29()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "JavaPackage"

    const-string v3, "JavaOuterClassname"

    const-string v4, "JavaMultipleFiles"

    const-string v5, "JavaGenerateEqualsAndHash"

    const-string v6, "OptimizeFor"

    const-string v7, "GoPackage"

    const-string v8, "CcGenericServices"

    const-string v9, "JavaGenericServices"

    const-string v10, "PyGenericServices"

    const-string v11, "UninterpretedOption"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$30(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$31(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$32()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "MessageSetWireFormat"

    const-string v3, "NoStandardDescriptorAccessor"

    const-string v4, "UninterpretedOption"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    const-class v5, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-direct {p1, v1, v2, v3, v5}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$33(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$34(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$35()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v5, "Ctype"

    const-string v6, "Packed"

    const-string v7, "Lazy"

    const-string v8, "Deprecated"

    const-string v9, "ExperimentalMapKey"

    const-string v10, "Weak"

    const-string v11, "UninterpretedOption"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const-class v5, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {p1, v1, v2, v3, v5}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$36(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$37(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$38()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "AllowAlias"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    const-class v5, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    invoke-direct {p1, v1, v2, v3, v5}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$39(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xc

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$40(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$41()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    const-class v5, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    invoke-direct {p1, v1, v2, v3, v5}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$42(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$43(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$44()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    const-class v5, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-direct {p1, v1, v2, v3, v5}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$45(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xe

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$46(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$47()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$48(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$49(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$50()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "IdentifierValue"

    const-string v4, "PositiveIntValue"

    const-string v5, "NegativeIntValue"

    const-string v6, "DoubleValue"

    const-string v7, "StringValue"

    const-string v8, "AggregateValue"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$51(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$50()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$52(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$53()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "NamePart"

    const-string v3, "IsExtension"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$54(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$55(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$56()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Location"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    const-class v4, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$57(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$56()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$58(Lcom/google/protobuf/Descriptors$Descriptor;)V

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$59()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "Path"

    const-string v2, "Span"

    const-string v3, "LeadingComments"

    const-string v4, "TrailingComments"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const-class v3, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$60(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    const/4 p1, 0x0

    return-object p1
.end method
