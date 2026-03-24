.class public final enum Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/http/client/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECT:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum COPY:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum DELETE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field private static final synthetic ENUM$VALUES:[Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum HEAD:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum MOVE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum OPTIONS:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum PUT:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field public static final enum TRACE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v3, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->PUT:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v5, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v7, "HEAD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->HEAD:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v7, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v9, "MOVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->MOVE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v9, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v11, "COPY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->COPY:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v11, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v13, "DELETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->DELETE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v13, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v15, "OPTIONS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->OPTIONS:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v15, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v14, "TRACE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->TRACE:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v14, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v12, "CONNECT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->CONNECT:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->ENUM$VALUES:[Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .locals 1

    const-class v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .locals 4

    sget-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->ENUM$VALUES:[Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    array-length v1, v0

    new-array v2, v1, [Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->value:Ljava/lang/String;

    return-object v0
.end method
