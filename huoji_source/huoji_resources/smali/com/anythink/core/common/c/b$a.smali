.class public final Lcom/anythink/core/common/c/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/c/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/c/b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/core/common/c/b$a;->a:Lcom/anythink/core/common/c/b;

    const/4 p1, 0x0

    const/16 v0, 0xc

    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/c/b$a;->a:Lcom/anythink/core/common/c/b;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/c/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget-object p2, p0, Lcom/anythink/core/common/c/b$a;->a:Lcom/anythink/core/common/c/b;

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/c/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/c/b$a;->a:Lcom/anythink/core/common/c/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/common/c/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
