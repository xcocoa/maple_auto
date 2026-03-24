.class public Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/db/sqlite/Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrderBy"
.end annotation


# instance fields
.field private columnName:Ljava/lang/String;

.field private desc:Z

.field public final synthetic this$0:Lcom/lidroid/xutils/db/sqlite/Selector;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/db/sqlite/Selector;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->this$0:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->columnName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/db/sqlite/Selector;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->this$0:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->columnName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->desc:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->columnName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->desc:Z

    if-eqz v1, :cond_0

    const-string v1, " DESC"

    goto :goto_0

    :cond_0
    const-string v1, " ASC"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
