.class public final enum Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field public static final enum BOOLEAN:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field public static final BOOLEAN_VALUE:I = 0x2

.field public static final enum DOUBLE:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field public static final DOUBLE_VALUE:I = 0x6

.field public static final enum FLOAT:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field public static final FLOAT_VALUE:I = 0x5

.field public static final enum INT:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field public static final INT_VALUE:I = 0x3

.field public static final enum LONG:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field public static final LONG_VALUE:I = 0x4

.field public static final enum STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field public static final STRING_VALUE:I = 0x7

.field private static final VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field public static final enum VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field public static final VOID_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const-string v1, "VOID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const-string v4, "BOOLEAN"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v3, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->BOOLEAN:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    new-instance v4, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const-string v6, "INT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v5, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    new-instance v6, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const-string v8, "LONG"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v7, v9}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->LONG:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    new-instance v8, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const-string v10, "FLOAT"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v9, v11}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->FLOAT:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    new-instance v10, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const-string v12, "DOUBLE"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v11, v13}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->DOUBLE:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    new-instance v12, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const-string v14, "STRING"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v13, v15}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    new-array v14, v15, [Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->$VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->values()[Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->index:I

    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->DOUBLE:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->FLOAT:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->LONG:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->BOOLEAN:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    .locals 1

    const-class v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->$VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {v0}, [Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
