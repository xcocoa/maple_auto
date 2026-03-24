.class public Lcom/cyjh/mobileanjian/rpc/Rpc;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AsynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    invoke-static {p0}, Lz2/uf;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lz2/uf;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lz2/uf;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->checkArgs([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-static {p3}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "retObj = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u7ecf\u8c03\u7528\u4e86AsynCall "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static SimpleCallReturnInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "int"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static SimpleCallReturnString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "String"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static SimpleCallStringParam(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "String"

    if-eqz p0, :cond_0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v0

    invoke-static {p1, p2, p3, p0, v1}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v0

    invoke-static {p1, p2, p3, p0, v1}, Lcom/cyjh/mobileanjian/rpc/Rpc;->AsynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static SimpleCallStringStringParam(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "String"

    if-eqz p0, :cond_0

    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p4, v2, v1

    aput-object p5, v2, v0

    invoke-static {p1, p2, p3, p0, v2}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p4, v2, v1

    aput-object p5, v2, v0

    invoke-static {p1, p2, p3, p0, v2}, Lcom/cyjh/mobileanjian/rpc/Rpc;->AsynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static SimpleCallStringStringParamReturnString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-class v0, Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p0, "Use SimpleCallReturnString instead."

    return-object p0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p4, :cond_1

    new-array p4, v1, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v2

    new-array v0, v1, [Ljava/lang/String;

    aput-object p3, v0, v2

    move-object v8, p4

    move-object v9, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    new-array v0, v3, [Ljava/lang/String;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    move-object v9, v0

    move-object v8, v4

    :goto_0
    const-string v10, "String"

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lz2/uf;->OooO00o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1}, Lz2/uf;->OooO00o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Lz2/uf;->OooO00o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p3, p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->checkArgs([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-static {p5}, Lcom/cyjh/mobileanjian/ipc/utils/m;->OooO00o(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    if-nez v1, :cond_3

    invoke-static {p3}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    move-object v5, p3

    move-object v4, v0

    goto :goto_0

    :cond_3
    move-object v4, v0

    move-object v5, v4

    :goto_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "retObj = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/cyjh/mobileanjian/ipc/utils/m;->OooO00o(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object p1

    :try_start_0
    sget-object p2, Lcom/cyjh/mobileanjian/rpc/Rpc$OooO00o;->OooO00o:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez p0, :cond_4

    const-string p0, ""

    return-object p0

    :cond_4
    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/lang/Double;

    return-object p0

    :pswitch_2
    check-cast p0, Ljava/lang/Float;

    return-object p0

    :pswitch_3
    check-cast p0, Ljava/lang/Long;

    return-object p0

    :pswitch_4
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :pswitch_5
    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const-string v5, "void"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private static arrayToList([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static checkArgs([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lz2/ff;->OooO00o([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lz2/ff;->OooO00o([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lz2/ff;->OooO00o([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lz2/ff;->OooO00o([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lz2/ff;->OooO0O0([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lz2/ff;->OooO0O0([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
