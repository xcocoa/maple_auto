.class public Lz2/tb$OooO0OO;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/tb;->Oooo00o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/tb;


# direct methods
.method public constructor <init>(Lz2/tb;)V
    .locals 0

    iput-object p1, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "image/jpeg"

    const-string v3, "image/png"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const-string v3, "mime_type= ? or mime_type=?"

    const-string v5, "date_modified"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Lz2/nb;

    invoke-direct {v5}, Lz2/nb;-><init>()V

    invoke-virtual {v5, v4}, Lz2/nb;->OooO0oo(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lz2/nb;->OooO(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lz2/tb$OooO0OO$OooO00o;

    invoke-direct {v2, p0}, Lz2/tb$OooO0OO$OooO00o;-><init>(Lz2/tb$OooO0OO;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    iget-object v4, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v4}, Lz2/tb;->OooOoO0(Lz2/tb;)I

    move-result v4

    if-le v2, v4, :cond_3

    iget-object v4, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v4, v2}, Lz2/tb;->OooOoO(Lz2/tb;I)I

    iget-object v4, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v4, v3}, Lz2/tb;->OooOoOO(Lz2/tb;Ljava/io/File;)Ljava/io/File;

    :cond_3
    invoke-virtual {v5, v2}, Lz2/nb;->OooO0o(I)V

    iget-object v2, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v2}, Lz2/tb;->OooOoo0(Lz2/tb;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Lz2/nb;

    invoke-direct {v0}, Lz2/nb;-><init>()V

    iget-object v1, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v1}, Lz2/tb;->OooOoo0(Lz2/tb;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v1}, Lz2/tb;->OooOoo0(Lz2/tb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->all_photo_mobile:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/nb;->OooO0oO(Ljava/lang/String;)V

    iget-object v1, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v1}, Lz2/tb;->OooOoo0(Lz2/tb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/nb;

    invoke-virtual {v1}, Lz2/nb;->OooO0Oo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/nb;->OooO(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v1}, Lz2/tb;->OooOoo0(Lz2/tb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz2/nb;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lz2/nb;->OooO0OO()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lz2/nb;->OooO00o()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4}, Lz2/nb;->OooO0o(I)V

    invoke-virtual {v0, v3}, Lz2/nb;->OooO0oo(Ljava/lang/String;)V

    iget-object v1, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v1}, Lz2/tb;->OooOoo0(Lz2/tb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v1, v0}, Lz2/tb;->OooOoo(Lz2/tb;Lz2/nb;)V

    iget-object v1, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v1}, Lz2/tb;->OooOooO(Lz2/tb;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x110

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lz2/tb$OooO0OO;->OoooOoO:Lz2/tb;

    invoke-static {v0}, Lz2/tb;->OooOooO(Lz2/tb;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
