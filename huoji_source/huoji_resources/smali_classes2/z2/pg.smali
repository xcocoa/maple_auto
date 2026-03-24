.class public Lz2/pg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/tg;
.implements Lz2/ug;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final o00O0O:I = -0x2

.field public static final o00Oo0:I = -0x1

.field public static final o00Ooo:I = 0x0

.field public static final o00o0O:I = 0x1


# instance fields
.field public OoooOoO:Ljava/lang/String;

.field public OoooOoo:Ljava/lang/String;

.field public Ooooo00:Ljava/lang/String;

.field public Ooooo0o:Ljava/lang/String;

.field public OooooO0:Ljava/lang/String;

.field public OooooOO:I

.field public OooooOo:I

.field public Oooooo:J

.field public Oooooo0:I

.field public OoooooO:Z

.field public Ooooooo:Z

.field public o0OoOo0:Ljava/lang/String;

.field public ooOO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lz2/pg;->OoooOoO:Ljava/lang/String;

    iput-object v0, p0, Lz2/pg;->OoooOoo:Ljava/lang/String;

    iput-object v0, p0, Lz2/pg;->Ooooo00:Ljava/lang/String;

    iput-object v0, p0, Lz2/pg;->Ooooo0o:Ljava/lang/String;

    iput-object v0, p0, Lz2/pg;->OooooO0:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lz2/pg;->OooooOO:I

    const/4 v2, 0x1

    iput v2, p0, Lz2/pg;->OooooOo:I

    const/4 v2, -0x2

    iput v2, p0, Lz2/pg;->Oooooo0:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lz2/pg;->Oooooo:J

    iput-boolean v1, p0, Lz2/pg;->OoooooO:Z

    iput-boolean v1, p0, Lz2/pg;->Ooooooo:Z

    iput-object v0, p0, Lz2/pg;->o0OoOo0:Ljava/lang/String;

    iput-object v0, p0, Lz2/pg;->ooOO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lz2/pg;->OoooOoO:Ljava/lang/String;

    iput-object v0, p0, Lz2/pg;->OoooOoo:Ljava/lang/String;

    iput-object v0, p0, Lz2/pg;->Ooooo00:Ljava/lang/String;

    iput-object v0, p0, Lz2/pg;->Ooooo0o:Ljava/lang/String;

    iput-object v0, p0, Lz2/pg;->OooooO0:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lz2/pg;->OooooOO:I

    const/4 v2, 0x1

    iput v2, p0, Lz2/pg;->OooooOo:I

    const/4 v2, -0x2

    iput v2, p0, Lz2/pg;->Oooooo0:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lz2/pg;->Oooooo:J

    iput-boolean v1, p0, Lz2/pg;->OoooooO:Z

    iput-boolean v1, p0, Lz2/pg;->Ooooooo:Z

    iput-object v0, p0, Lz2/pg;->o0OoOo0:Ljava/lang/String;

    iput-object v0, p0, Lz2/pg;->ooOO:Ljava/lang/String;

    iput-object p1, p0, Lz2/pg;->OoooOoO:Ljava/lang/String;

    iput-object p2, p0, Lz2/pg;->OoooOoo:Ljava/lang/String;

    iput-object p3, p0, Lz2/pg;->Ooooo00:Ljava/lang/String;

    return-void
.end method

.method public static OooOoo(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lz2/pg;
    .locals 6

    new-instance v0, Lz2/pg;

    invoke-direct {v0}, Lz2/pg;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Lz2/pg;->OooO0o0(Ljava/lang/String;)Lz2/tg;

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Lz2/pg;->OooO0oO(Ljava/lang/String;)Lz2/tg;

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lz2/pg;->OooO0oo(Ljava/lang/String;)Lz2/tg;

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lz2/pg;->OooOOoo(Z)Lz2/tg;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lz2/tg;->OooO0o(Ljava/lang/String;)Lz2/tg;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lz2/pg;->OooOOO(I)Lz2/tg;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lz2/tg;->OooOOOo(Ljava/lang/String;)Lz2/tg;

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lz2/pg;->OooO(I)Lz2/tg;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lz2/tg;->OooOo(Ljava/lang/String;)Lz2/tg;

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lz2/pg;->OooOo0o(I)Lz2/tg;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lz2/tg;->OooOo0O(Ljava/lang/String;)Lz2/tg;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg4(I)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lz2/tg;->OooOo0(J)Lz2/tg;

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getEncrypt()Z

    move-result p0

    invoke-virtual {v0, p0}, Lz2/pg;->OooOOoo(Z)Lz2/tg;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public OooO(I)Lz2/tg;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lz2/pg;->OooooOo:I

    const/4 p1, -0x2

    iput p1, p0, Lz2/pg;->Oooooo0:I

    :cond_0
    return-object p0
.end method

.method public OooO00o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/pg;->OoooOoO:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/pg;->OooooO0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/pg;->OooooOO:I

    return v0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/pg;->Ooooo00:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o(Ljava/lang/String;)Lz2/tg;
    .locals 0

    iput-object p1, p0, Lz2/pg;->Ooooo0o:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0o0(Ljava/lang/String;)Lz2/tg;
    .locals 0

    iput-object p1, p0, Lz2/pg;->ooOO:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0oO(Ljava/lang/String;)Lz2/tg;
    .locals 0

    iput-object p1, p0, Lz2/pg;->o0OoOo0:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0oo(Ljava/lang/String;)Lz2/tg;
    .locals 0

    iput-object p1, p0, Lz2/pg;->OooooO0:Ljava/lang/String;

    return-object p0
.end method

.method public OooOO0O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/pg;->o0OoOo0:Ljava/lang/String;

    return-object v0
.end method

.method public OooOO0o()Z
    .locals 1

    iget-boolean v0, p0, Lz2/pg;->OoooooO:Z

    return v0
.end method

.method public OooOOO(I)Lz2/tg;
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lz2/pg;->Oooooo0:I

    const/4 p1, -0x1

    iput p1, p0, Lz2/pg;->OooooOo:I

    :cond_0
    return-object p0
.end method

.method public OooOOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/pg;->ooOO:Ljava/lang/String;

    return-object v0
.end method

.method public OooOOOO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 3

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v2, p0, Lz2/pg;->ooOO:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lz2/pg;->ooOO:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lz2/pg;->ooOO:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lz2/pg;->o0OoOo0:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lz2/pg;->o0OoOo0:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lz2/pg;->o0OoOo0:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lz2/pg;->OooooO0:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-boolean v1, p0, Lz2/pg;->Ooooooo:Z

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    iget-object v1, p0, Lz2/pg;->Ooooo0o:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget v1, p0, Lz2/pg;->Oooooo0:I

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    iget-object v1, p0, Lz2/pg;->Ooooo00:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget v1, p0, Lz2/pg;->OooooOo:I

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    iget-object v1, p0, Lz2/pg;->OoooOoo:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    goto :goto_2

    :pswitch_6
    iget v1, p0, Lz2/pg;->OooooOO:I

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    iget-object v1, p0, Lz2/pg;->OoooOoO:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    iget-wide v1, p0, Lz2/pg;->Oooooo:J

    invoke-virtual {p1, v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg4(J)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lz2/pg;->OoooooO:Z

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setEncrypt(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public OooOOOo(Ljava/lang/String;)Lz2/tg;
    .locals 0

    iput-object p1, p0, Lz2/pg;->Ooooo00:Ljava/lang/String;

    return-object p0
.end method

.method public OooOOo(Z)Lz2/tg;
    .locals 0

    iput-boolean p1, p0, Lz2/pg;->Ooooooo:Z

    return-object p0
.end method

.method public OooOOo0()I
    .locals 1

    iget v0, p0, Lz2/pg;->OooooOo:I

    return v0
.end method

.method public OooOOoo(Z)Lz2/tg;
    .locals 0

    iput-boolean p1, p0, Lz2/pg;->OoooooO:Z

    return-object p0
.end method

.method public OooOo(Ljava/lang/String;)Lz2/tg;
    .locals 0

    iput-object p1, p0, Lz2/pg;->OoooOoo:Ljava/lang/String;

    return-object p0
.end method

.method public OooOo0(J)Lz2/tg;
    .locals 0

    iput-wide p1, p0, Lz2/pg;->Oooooo:J

    return-object p0
.end method

.method public OooOo00()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/pg;->OoooOoo:Ljava/lang/String;

    return-object v0
.end method

.method public OooOo0O(Ljava/lang/String;)Lz2/tg;
    .locals 0

    iput-object p1, p0, Lz2/pg;->OoooOoO:Ljava/lang/String;

    return-object p0
.end method

.method public OooOo0o(I)Lz2/tg;
    .locals 0

    iput p1, p0, Lz2/pg;->OooooOO:I

    return-object p0
.end method

.method public OooOoO()I
    .locals 1

    iget v0, p0, Lz2/pg;->Oooooo0:I

    return v0
.end method

.method public OooOoO0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/pg;->Ooooooo:Z

    return v0
.end method

.method public OooOoOO()J
    .locals 2

    iget-wide v0, p0, Lz2/pg;->Oooooo:J

    return-wide v0
.end method

.method public OooOoo0()Lz2/pg;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/pg;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/pg;->OooOoo0()Lz2/pg;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/pg;->Ooooo0o:Ljava/lang/String;

    return-object v0
.end method
