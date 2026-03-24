.class public Lcom/lidroid/xutils/http/HttpCache$1;
.super Lcom/lidroid/xutils/cache/LruMemoryCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/xutils/http/HttpCache;-><init>(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/cache/LruMemoryCache<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/lidroid/xutils/http/HttpCache;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/http/HttpCache;I)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpCache$1;->this$0:Lcom/lidroid/xutils/http/HttpCache;

    invoke-direct {p0, p2}, Lcom/lidroid/xutils/cache/LruMemoryCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/http/HttpCache$1;->sizeOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sizeOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method
