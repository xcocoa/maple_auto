.class public Lz2/bc0;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field public static final OooO00o:Ljava/lang/String; = "LitePalHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lorg/litepal/LitePalApplication;->OooO00o()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lz2/bc0;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p1}, Lz2/ac0;->OooOoo0(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lz2/na0;->Oooo00o()Lz2/dc0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lz2/dc0;->onCreate()V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-static {p1}, Lz2/ac0;->Oooo0O0(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lz2/rb0;->OooO0oo()Lz2/rb0;

    move-result-object p1

    invoke-virtual {p1}, Lz2/rb0;->OooO0oO()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lz2/tc0;->OooO0OO(Ljava/lang/String;I)V

    invoke-static {}, Lz2/na0;->Oooo00o()Lz2/dc0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lz2/dc0;->OooO00o(II)V

    :cond_0
    return-void
.end method
