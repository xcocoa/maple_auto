.class public final enum Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lidroid/xutils/db/sqlite/ColumnDbType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOB:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

.field private static final synthetic ENUM$VALUES:[Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

.field public static final enum INTEGER:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

.field public static final enum REAL:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

.field public static final enum TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->INTEGER:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    new-instance v1, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const-string v3, "REAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->REAL:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    new-instance v3, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const-string v5, "TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    new-instance v5, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const-string v7, "BLOB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->BLOB:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->ENUM$VALUES:[Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .locals 1

    const-class v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object p0
.end method

.method public static values()[Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .locals 4

    sget-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->ENUM$VALUES:[Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->value:Ljava/lang/String;

    return-object v0
.end method
