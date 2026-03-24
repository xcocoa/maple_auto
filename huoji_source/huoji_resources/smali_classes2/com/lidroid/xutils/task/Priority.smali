.class public final enum Lcom/lidroid/xutils/task/Priority;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lidroid/xutils/task/Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BG_LOW:Lcom/lidroid/xutils/task/Priority;

.field public static final enum BG_NORMAL:Lcom/lidroid/xutils/task/Priority;

.field public static final enum BG_TOP:Lcom/lidroid/xutils/task/Priority;

.field public static final enum DEFAULT:Lcom/lidroid/xutils/task/Priority;

.field private static final synthetic ENUM$VALUES:[Lcom/lidroid/xutils/task/Priority;

.field public static final enum UI_LOW:Lcom/lidroid/xutils/task/Priority;

.field public static final enum UI_NORMAL:Lcom/lidroid/xutils/task/Priority;

.field public static final enum UI_TOP:Lcom/lidroid/xutils/task/Priority;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/lidroid/xutils/task/Priority;

    const-string v1, "UI_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lidroid/xutils/task/Priority;->UI_TOP:Lcom/lidroid/xutils/task/Priority;

    new-instance v1, Lcom/lidroid/xutils/task/Priority;

    const-string v3, "UI_NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lidroid/xutils/task/Priority;->UI_NORMAL:Lcom/lidroid/xutils/task/Priority;

    new-instance v3, Lcom/lidroid/xutils/task/Priority;

    const-string v5, "UI_LOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lidroid/xutils/task/Priority;->UI_LOW:Lcom/lidroid/xutils/task/Priority;

    new-instance v5, Lcom/lidroid/xutils/task/Priority;

    const-string v7, "DEFAULT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/lidroid/xutils/task/Priority;->DEFAULT:Lcom/lidroid/xutils/task/Priority;

    new-instance v7, Lcom/lidroid/xutils/task/Priority;

    const-string v9, "BG_TOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/lidroid/xutils/task/Priority;->BG_TOP:Lcom/lidroid/xutils/task/Priority;

    new-instance v9, Lcom/lidroid/xutils/task/Priority;

    const-string v11, "BG_NORMAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/lidroid/xutils/task/Priority;->BG_NORMAL:Lcom/lidroid/xutils/task/Priority;

    new-instance v11, Lcom/lidroid/xutils/task/Priority;

    const-string v13, "BG_LOW"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/lidroid/xutils/task/Priority;->BG_LOW:Lcom/lidroid/xutils/task/Priority;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/lidroid/xutils/task/Priority;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/lidroid/xutils/task/Priority;->ENUM$VALUES:[Lcom/lidroid/xutils/task/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidroid/xutils/task/Priority;
    .locals 1

    const-class v0, Lcom/lidroid/xutils/task/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/task/Priority;

    return-object p0
.end method

.method public static values()[Lcom/lidroid/xutils/task/Priority;
    .locals 4

    sget-object v0, Lcom/lidroid/xutils/task/Priority;->ENUM$VALUES:[Lcom/lidroid/xutils/task/Priority;

    array-length v1, v0

    new-array v2, v1, [Lcom/lidroid/xutils/task/Priority;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
