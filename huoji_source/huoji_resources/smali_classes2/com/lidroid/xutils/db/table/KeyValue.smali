.class public Lcom/lidroid/xutils/db/table/KeyValue;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    return-void
.end method
